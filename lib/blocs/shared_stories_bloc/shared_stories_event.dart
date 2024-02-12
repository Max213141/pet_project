part of 'shared_stories_bloc.dart';

@freezed
class SharedStoriesEvent with _$SharedStoriesEvent {
  const factory SharedStoriesEvent.loadRandomStory({
    required String userUID,
  }) = LoadRandomStoryEvent;

  const factory SharedStoriesEvent.loadUserStories({
    List<SharedStory>? randomStoriesList,
    bool? emitLoading,
    required String userUID,
  }) = LoadUserStoriesEvent;

  const factory SharedStoriesEvent.uploadSharedStories({
    required String userUID,
    required List<SharedStory> stories,
  }) = AddSharedStoriesEvent;

  const factory SharedStoriesEvent.addNewStory({
    required int userUID,
    required SharedStory story,
  }) = AddNewStoryEvent;

  const factory SharedStoriesEvent.removeStory({
    required int userUID,
    required SharedStory story,
  }) = RemoveStoryEvent;
}
