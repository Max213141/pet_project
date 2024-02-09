part of 'shared_stories_bloc.dart';

@freezed
class SharedStoriesEvent with _$SharedStoriesEvent {
  const factory SharedStoriesEvent.loadRandomStory({
    required String iserUID,
  }) = LoadRandomStoryEvent;

  const factory SharedStoriesEvent.loadUserStories({
    List<SharedStory>? randomStoriesList,
    bool? emitLoading,
    required String iserUID,
  }) = LoadUserStoriesEvent;

  const factory SharedStoriesEvent.uploadSharedStories({
    required String iserUID,
    required List<SharedStory> stories,
  }) = AddSharedStoriesEvent;

  const factory SharedStoriesEvent.addNewStory({
    required int iserUID,
    required SharedStory story,
  }) = AddNewStoryEvent;

  const factory SharedStoriesEvent.removeStory({
    required int iserUID,
    required SharedStory story,
  }) = RemoveStoryEvent;
}
