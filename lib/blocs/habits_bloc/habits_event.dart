part of 'habits_bloc.dart';

@freezed
class HabitsEvent with _$HabitsEvent {
  const factory HabitsEvent.loadHabits({
    required String userUID,
  }) = LoadHabits;

  const factory HabitsEvent.uploadHabits({
    required String userUID,
    required List<dynamic> userUpdatedHabits, //TODO finish with proper class
  }) = UploadHabits;
}
