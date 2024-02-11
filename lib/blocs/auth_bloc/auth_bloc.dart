import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  AuthBloc({required this.auth}) : super(const _Initial()) {
    on<AuthEvent>((events, emit) async {
      await events.map(
        createUser: (event) async => await _createUser(event, emit),
        logIn: (event) async => await _logIn(event, emit),
        logOut: (event) async => await _logOut(event, emit),
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
          Box<UserData> userDataBox = HiveStore().getUserDataBox();
          UserData? userData = userDataBox.getAt(0);
          if (userData != null) {
            userData.userName = data.name;
            userData.uid = uid;
            await userDataBox.put(0, userData);
          }
        } else {
          _log('Smth went wrong with name'); //TODO implement error handling
        }
      } catch (e) {
        _log('Error $e'); //TODO implement error handling
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
