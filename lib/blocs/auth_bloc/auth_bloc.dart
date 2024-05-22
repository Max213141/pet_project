import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/user_data.dart';
import 'package:life_sync/utils/loger.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'auth_bloc');

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  AuthBloc({
    required this.auth,
    required this.googleSignIn,
  }) : super(const _Initial()) {
    on<AuthEvent>((events, emit) async {
      await events.map(
        createUser: (event) async => await _createUser(event, emit),
        signInWithGoogle: (event) async => await _signInWithGoogle(event, emit),
        logIn: (event) async => await _logIn(event, emit),
        logOut: (event) async => await _logOut(event, emit),
        deleteUser: (event) async => await _deleteUser(event, emit),
        // next: (_) async => await _next(emit),
        // previous: (_) async => await _previous(emit),
      );
    });
  }

  _createUser(CreateUserEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      final uid = userCredential.user?.uid;
      _log('User ${userCredential.user?.uid ?? 'UID NOT found'} signed in');

      await FirebaseFirestore.instance.collection('users').doc(uid).set(
        {
          'userData': {
            'name': event.username,
            'email': event.email,
            'password': event.password,
          },
        },
      );
      _log('create user done successfully');
      add(LogInEvent(email: event.email, password: event.password));
      // Зарегистрированный пользователь сохранен в объекте userCredential.user.
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          const AuthState.authError(
            errorText: 'Пароль слишком слабый.',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          const AuthState.authError(
            errorText:
                'Адрес электронной почты уже используется другим аккаунтом.',
          ),
        );
      } else {
        _log('USER CREATION AUTH EXEPTION: $e');
      }
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED USER CREATION AUTH EXEPTION: $e');
    }
  }

  _signInWithGoogle(SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        // The user canceled the sign-in
        emit(AuthState.authError(errorText: 'User canceled the sign-in'));
        _log('User canceled the sign-in ');
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      final UserCredential userCredential =
          await auth.signInWithCredential(credential);
      userCredential.additionalUserInfo?.profile
          ?.forEach((key, value) => _log('Value - $key: $value'));
      emit(const AuthState.logInSuccess());

      // return userCredential.user;
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED USER CREATION AUTH EXEPTION: $e');
      return null;
    }
  }

  _logIn(LogInEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      _log('User login: ${event.email.trim()}');
      _log('User password: ${event.password.trim()}');
      final userCredential = await auth.signInWithEmailAndPassword(
        email: event.email.trim(),
        password: event.password.trim(),
      );
      final uid = userCredential.user?.uid;

      try {
        //TODO impelement separated methods for db requests, simplify the code
        DocumentSnapshot docSnapShot =
            await FirebaseFirestore.instance.collection('users').doc(uid).get();
        if (docSnapShot.exists) {
          final dbData = docSnapShot.get('userData');
          DBUserData data = DBUserData.fromJson(dbData);
          _log('USERNAME - ${data.name}');
          UserData? userData = HiveStore().getUserData();
          if (userData != null) {
            userData.userName = data.name;
            userData.uid = uid;
            userData.email = data.email;
            userData.password = data.password;
            await Hive.box<UserData>('user_data').put(0, userData);
          }
        } else {
          _log('Smth went wrong with name'); //TODO implement error handling
        }
      } catch (error) {
        emit(
          const AuthState.authError(
            errorText: 'Something went wrong. Please try again later.',
          ),
        );
        _log('Error $error'); //TODO implement error handling
      }

      emit(const AuthState.logInSuccess());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: ${e.message}'));
      _log('LOG IN AUTH EXEPTION: $e');
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED AUTH ERROR: $e');
    }
  }

  _deleteUser(DeleteUserEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final userData = HiveStore().getUserData();
    final userUID = userData!.uid;

    try {
      await auth.currentUser!.delete();
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userUID)
          .delete();
      emit(const AuthState.logOutSuccess());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.authError(
          errorText:
              'Ошибка: ${e.message}')); //TODO implement error and state handling
      _log('DELETION EXCEPTION: $e');
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED DELETION ERROR: $e');
    }

    // await auth.signOut();
  }

  _logOut(LogOutEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      // final userCredential =
      await auth.signOut();
      _log('User  signed out successfully');
      emit(const AuthState.logOutSuccess());
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED AUTH LOG OUT ERROR: $e');
    }
  }
}
