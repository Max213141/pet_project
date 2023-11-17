part of 'shared_stories_bloc.dart';

@freezed
class SharedStoriesState with _$SharedStoriesState {
  const factory SharedStoriesState.initial() = _Initial;
  const factory SharedStoriesState.loadingRandomStory() = _LoadingRandomStory;
  const factory SharedStoriesState.loadingUserStories() = _LoadingUserStories;
  const factory SharedStoriesState.uploadingStories() = _UploadingStories;

  const factory SharedStoriesState.storiesLoaded({
    @Default([]) List<SharedStory> userStories,
    @Default([]) List<SharedStory> randomStories,
  }) = _StoriesLoaded;

  const factory SharedStoriesState.storiesLoadingError({
    @Default('Shared stories loading error') String errorText,
  }) = _StoriesLoadingError;
}
