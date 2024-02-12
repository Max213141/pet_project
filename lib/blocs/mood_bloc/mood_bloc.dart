import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

part 'mood_event.dart';
part 'mood_state.dart';
part 'mood_bloc.freezed.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'mood_bloc');

class MoodBloc extends Bloc<MoodEvent, MoodState> {
  MoodBloc() : super(const _Initial()) {
    on<MoodEvent>(
      (events, emit) async {
        await events.map(
          loadUserMoodData: (event) async =>
              await _loadUserMoodData(event, emit),
          uploadUserMoodData: (event) async =>
              await _uploadUserMoodData(event, emit),
        );
      },
    );
  }

  _loadUserMoodData(
    MoodEvent event,
    Emitter<MoodState> emit,
  ) async {
    String uid = event.userUID;
    final ref = await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .withConverter(
          fromFirestore: UserInfo.fromFirestore,
          toFirestore: (UserInfo userInfo, _) => userInfo.toFirestore(),
        );
    final docSnapshot = await ref.get();
    final userInfo = docSnapshot.data();
    if (userInfo != null) {
      _log(userInfo);
    } else {
      _log("No such document.");
    }
  }

  _uploadUserMoodData(
    MoodEvent event,
    Emitter<MoodState> emit,
  ) async {}
}
