part of 'mood_bloc.dart';

@freezed
class MoodState with _$MoodState {
  const factory MoodState.initial() = _Initial;

  const factory MoodState.loading() = _Loading;

  const factory MoodState.moodLoaded(
    List<MoodEntry> moodEntries,
  ) = _MoodLoaded;

  const factory MoodState.moodUploaded() = _MoodUploaded;

  const factory MoodState.moodLoadingError({
    @Default('Stories loading error') String errorText,
  }) = _MoodLoadingError;
}
