part of 'mood_bloc.dart';

@freezed
class MoodEvent with _$MoodEvent {
  const factory MoodEvent.loadUserMoodData({
    required String userUID,
  }) = LoadUserMoodData;

  const factory MoodEvent.uploadUserMoodData({
    required String userUID,
    required MoodEntry currentMood,
    required MoodTracker updatedMoodTracker,
    required DBUserData userData,
  }) = UploadUserMoodData;
}
