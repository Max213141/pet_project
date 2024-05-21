part of 'habits_bloc.dart';

@freezed
class HabitsEvent with _$HabitsEvent {
  const factory HabitsEvent.streamUserHabits({
    required String userUID,
  }) = StreamUserHabits;

  const factory HabitsEvent.loadHabits({
    required String userUID,
    bool? isHomeScreen,
  }) = LoadHabits;

  const factory HabitsEvent.uploadHabits({
    required String userUID,
    required UserHabitsList userUpdatedHabits,
  }) = UploadHabits;
}
