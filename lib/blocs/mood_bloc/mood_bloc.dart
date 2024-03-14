import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/utils/utils.dart';

part 'mood_event.dart';
part 'mood_state.dart';
part 'mood_bloc.freezed.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'mood_bloc');

class MoodBloc extends Bloc<MoodEvent, MoodState> {
  MoodBloc() : super(const Initial()) {
    on<MoodEvent>(
      (events, emit) async {
        await events.map(
          loadUserMoodData: (event) async =>
              await _loadUserMoodData(event, emit),
          uploadUserMoodData: (event) async =>
              await _uploadUserMoodData(event, emit),
        );
      },
    );
  }

  _loadUserMoodData(LoadUserMoodData event, Emitter<MoodState> emit) async {
    emit(
      const MoodState.loading(),
    );
    String uid = event.userUID;
    final ref =
        FirebaseFirestore.instance.collection('users').doc(uid).withConverter(
              fromFirestore: UserInfo.fromFirestore,
              toFirestore: (UserInfo userInfo, _) => userInfo.toFirestore(),
            );
    try {
      final docSnapshot = await ref.get();

      final userInfo = docSnapshot.data();
      // _log('Fucking mood entries $userInfo');
      emit(
        MoodState.moodLoaded(
          userInfo?.moodTracker?.dailyMood ?? [],
        ),
      );
    } catch (e) {
      emit(MoodState.moodLoadingError(errorText: e.toString()));
    }
  }

  _uploadUserMoodData(
    UploadUserMoodData event,
    Emitter<MoodState> emit,
  ) async {
    final UserData? userData = HiveStore().getUserData();
    final String? uid = userData?.uid;
    final ref =
        FirebaseFirestore.instance.collection('users').doc(uid).withConverter(
              fromFirestore: UserInfo.fromFirestore,
              toFirestore: (UserInfo userInfo, _) => userInfo.toFirestore(),
            );

    try {
      final updatedUserMoodInfo = UserInfo(
        moodTracker: MoodTracker(
          dailyMood: event.updatedMoodTracker,
        ),
        userData: DBUserData(
          email: userData!.email!,
          name: userData.userName!,
          password: userData.password!,
        ),
      );
      await ref.set(updatedUserMoodInfo);

      add(MoodEvent.loadUserMoodData(userUID: uid!));
    } catch (e) {
      emit(MoodState.moodLoadingError(errorText: e.toString()));
    }
  }
}
