import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_sync/entities/entities.dart';
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
        uploadSharedStories: (event) async =>
            await _uploadSharedStories(event, emit),
        addNewStory: (event) async => await _addNewStory(event, emit),
        removeStory: (event) async => await _removeStory(event, emit),
      );
    });
  }

  _loadRandomStory(
    LoadRandomStoryEvent event,
    Emitter<SharedStoriesState> emit,
  ) async {
    String uid = event.iserUID;
    emit(const SharedStoriesState.loading());

    try {
      // Get all sharedStories except for the user's own stories
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('sharedStories')
          .where(
            'uid',
            isNotEqualTo: uid,
          ) // Exclude the user's own stories
          .get();

      List<List<SharedStory>> sharedStories = querySnapshot.docs.map((doc) {
        List<Map<String, dynamic>> data = doc.get('userStories');
        return data
            .map(
              (userStory) => SharedStory.fromJson(userStory),
            )
            .toList();
      }).toList();

      // Get a single random shared story from the list
      if (sharedStories.isNotEmpty) {
        Random random = Random();
        List<SharedStory> randomStories =
            sharedStories[random.nextInt(sharedStories.length)];

        emit(
          SharedStoriesState.storiesLoaded(randomStories: randomStories),
        );
      } else {
        emit(
          const SharedStoriesState.storiesLoaded(),
        ); // Return null if no shared stories are found
      }
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Error: $e'));
      _log('UNHANDLED RANDOM STORY LOADING ERROR: $e');
    }
  }

  _loadUserStories(
    LoadUserStoriesEvent event,
    Emitter<SharedStoriesState> emit,
  ) async {
    String uid = event.iserUID;
    emit(const SharedStoriesState.loading());

    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('sharedStories')
          .doc(uid)
          .get();
      if (snapshot.exists) {
        final List<Map<String, dynamic>> dbData = snapshot.get('userStories');
        _log('$dbData');
        List<SharedStory> sharedStories = dbData
            .map(
              (data) => SharedStory.fromJson(data),
            )
            .toList();
        emit(
          SharedStoriesState.storiesLoaded(userStories: sharedStories),
        );
      } else {
        return emit(
          const SharedStoriesState.storiesLoaded(),
        );
      }
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED RANDOM STORY LOADING ERROR: $e');
    }
  }

  _uploadSharedStories(
    AddSharedStoriesEvent event,
    Emitter<SharedStoriesState> emit,
  ) async {
    String uid = event.iserUID;
    emit(const SharedStoriesState.loading());

    try {
      DocumentSnapshot sharedStoriesSnapshot = await FirebaseFirestore.instance
          .collection('sharedStories')
          .doc(uid)
          .get();
      _log('SharedStories - $sharedStoriesSnapshot');
      if (sharedStoriesSnapshot.exists) {
        FirebaseFirestore.instance.collection('sharedStories').doc(uid).update(
          {
            'userStories': event.stories
                .map((story) => {
                      'title': story.title,
                      'description': story.description,
                    })
                .toList(),
          },
        );
        emit(SharedStoriesState.storiesUploaded());
      } else {
        _log('Creating shared stories collection in Firebase');
        FirebaseFirestore.instance.collection('sharedStories').doc(uid).set(
          {
            'sharedStories': event.stories
                .map((story) => {
                      'title': story.title,
                      'description': story.description,
                    })
                .toList(),
          },
        );
        emit(SharedStoriesState.storiesUploaded());
      }
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED SHARED STORIES CREATION ERROR: $e');
    }
  }

  _addNewStory(
      SharedStoriesEvent event, Emitter<SharedStoriesState> emit) async {
    emit(const SharedStoriesState.loading());

    try {
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
