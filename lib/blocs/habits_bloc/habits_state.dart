part of 'habits_bloc.dart';

@freezed
class HabitsState with _$HabitsState {
  const factory HabitsState.initial() = _Initial;

  const factory HabitsState.loading() = _Loading;

  const factory HabitsState.habitsLoaded({
    required List<dynamic> userHabits, //TODO finish with proper class
  }) = _HabitsLoaded;
  const factory HabitsState.habitsUploaded() = _HabitsUploaded;
}
