import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/utils/utils.dart';

part 'shared_stories_event.dart';
part 'shared_stories_state.dart';
part 'shared_stories_bloc.freezed.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'shared_stories_bloc');

class SharedStoriesBloc extends Bloc<SharedStoriesEvent, SharedStoriesState> {
  SharedStoriesBloc() : super(const _Initial()) {
    on<SharedStoriesEvent>((events, emit) async {
      await events.map(
        loadRandomStory: (event) async => await _loadRandomStory(event, emit),
        loadUserStories: (event) async => await _loadUserStories(event, emit),
        addSharedStories: (event) async => await _addSharedStories(event, emit),
        addNewStory: (event) async => await _addNewStory(event, emit),
        removeStory: (event) async => await _removeStory(event, emit),
      );
    });
  }

  _loadRandomStory(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) async {
    emit(const SharedStoriesState.loadingRandomStory());

    try {
      //  await FirebaseFirestore.instance.collection('users');
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED RANDOM STORY LOADING ERROR: $e');
    }
  }

  _loadUserStories(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) async {
    emit(const SharedStoriesState.loadingRandomStory());

    try {
      //  await FirebaseFirestore.instance.collection('users');
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED RANDOM STORY LOADING ERROR: $e');
    }
  }

  _addSharedStories(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) async {
    emit(const SharedStoriesState.uploadingStories());

    try {
      final sharedStories =
          await FirebaseFirestore.instance.collection('sharedStories').get();
      _log('SharedStories - $sharedStories');
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED SHARED STORIES CREATION ERROR: $e');
    }
  }

  _addNewStory(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) async {
    emit(const SharedStoriesState.uploadingStories());

    try {
      Box<UserData> userDataBox = HiveStore().getUserDataBox();
      UserData? userData = userDataBox.getAt(0);

      // if (userData?.uid?.isNotEmpty ?? false) {
      //   await FirebaseFirestore.instance
      //       .collection('sharedStories')
      //       .doc(userData!.uid!)
      //       .set(
      //     {
      //       'userData': {},
      //     },
      //   );
      // } else {
      //   throw Error();
      // }
      _log('create user done successfully');
      // Зарегистрированный пользователь сохранен в объекте userCredential.user.
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED SHARED STORIES ADDING ERROR: $e');
    }
  }

  _removeStory(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) async {}
}
