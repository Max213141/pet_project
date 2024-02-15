part of 'mood_bloc.dart';

@freezed
class MoodState with _$MoodState {
  const factory MoodState.initial() = Initial;

  const factory MoodState.loading() = Loading;

  const factory MoodState.moodLoaded(
    List<dynamic> moodEntries,
  ) = _MoodLoaded;

  // const factory MoodState.moodUploaded() = MoodUploaded;

  const factory MoodState.moodLoadingError({
    @Default('Stories loading error') String errorText,
  }) = MoodLoadingError;
}
