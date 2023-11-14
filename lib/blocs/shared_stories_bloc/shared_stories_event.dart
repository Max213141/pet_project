part of 'shared_stories_bloc.dart';

@freezed
class SharedStoriesEvent with _$SharedStoriesEvent {
  const factory SharedStoriesEvent.started() = _Started;

  const factory SharedStoriesEvent.loadRandomStory() = _LoadRandomStoryEvent;

  const factory SharedStoriesEvent.loadUserStories({
    required int iserUID,
  }) = _LoadUserStoriesEvent;

  const factory SharedStoriesEvent.addNewStory({
    required int iserUID,
    required SharedStory story,
  }) = _AddNewStoryEvent;

  const factory SharedStoriesEvent.removeStory({
    required int iserUID,
    required SharedStory story,
  }) = _RemoveStoryEvent;
}
