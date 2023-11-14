import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_sync/entities/entities.dart';

part 'shared_stories_event.dart';
part 'shared_stories_state.dart';
part 'shared_stories_bloc.freezed.dart';

class SharedStoriesBloc extends Bloc<SharedStoriesEvent, SharedStoriesState> {
  SharedStoriesBloc() : super(const _Initial()) {
    on<SharedStoriesEvent>((events, emit) async {
      await events.map(
        started: (event) async => await _started(event, emit),
        loadRandomStory: (event) async => await _loadRandomStory(event, emit),
        loadUserStories: (event) async => await _loadUserStories(event, emit),
        addNewStory: (event) async => await _addNewStory(event, emit),
        removeStory: (event) async => await _removeStory(event, emit),
      );
    });
  }

  _started(SharedStoriesEvent event, Emitter<SharedStoriesState> emit) {}

  _loadRandomStory(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) {}

  _loadUserStories(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) {}

  _addNewStory(SharedStoriesEvent event, Emitter<SharedStoriesState> emit) {}

  _removeStory(SharedStoriesEvent event, Emitter<SharedStoriesState> emit) {}
}
