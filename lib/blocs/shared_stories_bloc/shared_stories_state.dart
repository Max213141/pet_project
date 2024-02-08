part of 'shared_stories_bloc.dart';

@freezed
class SharedStoriesState with _$SharedStoriesState {
  const factory SharedStoriesState.initial() = _Initial;
  const factory SharedStoriesState.loading() = _Loading;
  const factory SharedStoriesState.storiesUploaded() = _StoriesUploaded;

  const factory SharedStoriesState.storiesLoaded({
    @Default([]) List<SharedStory> userStories,
    @Default([]) List<SharedStory> randomStories,
  }) = _StoriesLoaded;

  const factory SharedStoriesState.storiesLoadingError({
    @Default('Stories loading error') String errorText,
  }) = _StoriesLoadingError;
}
