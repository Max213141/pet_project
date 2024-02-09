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
  FirebaseFirestore db = FirebaseFirestore.instance;

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
    List<SharedStory> randomStoriesList = [];
    String uid = event.iserUID;
    emit(const SharedStoriesState.loading());

    try {
      var querySnapshot = await db
          .collection("sharedStories")
          .where('uid', isNotEqualTo: uid)
          .get();

      _log("$querySnapshot");

      for (var docSnapshot in querySnapshot.docs) {
        _log('${docSnapshot.id} => ${docSnapshot.data()}');
        final Map<String, dynamic> data = docSnapshot.data();
        final List<dynamic> sharedStories = data['userStories'];
        randomStoriesList = sharedStories
            .map(
              (story) => SharedStory.fromJson(story),
            )
            .toList();
        _log('Parsed list - $randomStoriesList');
      }
      add(
        LoadUserStoriesEvent(
          iserUID: uid,
          randomStoriesList: randomStoriesList,
          emitLoading: false,
        ),
      );
      // emit(
      //   SharedStoriesState.storiesLoaded(randomStories: randomStoriesList),
      // );
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
    _log('emit loading -${event.emitLoading}');
    if (event.emitLoading ?? true) emit(const SharedStoriesState.loading());

    try {
      DocumentSnapshot snapshot =
          await db.collection('sharedStories').doc(uid).get();
      if (snapshot.exists) {
        final List<dynamic> dbData = snapshot.get('userStories');
        _log('$dbData');
        List<SharedStory> sharedStories = dbData
            .map(
              (data) => SharedStory.fromJson(data),
            )
            .toList();
        emit(
          SharedStoriesState.storiesLoaded(
              userStories: sharedStories,
              randomStories: event.randomStoriesList ?? []),
        );
      } else {
        return emit(
          SharedStoriesState.storiesLoaded(
              randomStories: event.randomStoriesList ?? []),
        );
      }
    } catch (e) {
      emit(SharedStoriesState.storiesLoadingError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED USER STORY LOADING ERROR: $e');
    }
  }

  _uploadSharedStories(
    AddSharedStoriesEvent event,
    Emitter<SharedStoriesState> emit,
  ) async {
    String uid = event.iserUID;
    emit(const SharedStoriesState.loading());

    try {
      DocumentSnapshot sharedStoriesSnapshot =
          await db.collection('sharedStories').doc(uid).get();
      _log('SharedStories - $sharedStoriesSnapshot');
      if (sharedStoriesSnapshot.exists) {
        db.collection('sharedStories').doc(uid).update(
          {
            'userStories': event.stories
                .map(
                  (story) => story.toJson(),
                )
                .toList(),
          },
        );
        add(LoadUserStoriesEvent(iserUID: uid));

        emit(const SharedStoriesState.storiesUploaded());
      } else {
        _log('Creating shared stories collection in Firebase');
        db.collection('sharedStories').doc(uid).set(
          {
            'userStories': event.stories
                .map(
                  (story) => story.toJson(),
                )
                .toList(),
            'uid': uid,
          },
        );
        add(LoadUserStoriesEvent(iserUID: uid));
        emit(const SharedStoriesState.storiesUploaded());
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
      //   await db
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
