import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'habits_bloc');

class HabitsBloc extends Bloc<HabitsEvent, HabitsState> {
  HabitsBloc() : super(const _Initial()) {
    on<HabitsEvent>(
      (events, emit) async {
        await events.map(
          loadHabits: (event) async => await _loadUserHabits(event, emit),
          uploadHabits: (event) async => await _uploadUserHabits(event, emit),
        );
      },
    );
  }

  _loadUserHabits(LoadHabits event, Emitter<HabitsState> emit) async {
    String uid = event.userUID;
    final ref = FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('habits')
        .doc('userHabits')
        .withConverter(
          fromFirestore: UserHabitsList.fromFirestore,
          toFirestore: (UserHabitsList userHabits, _) =>
              userHabits.toFirestore(),
        );
    try {
      final docSnapshot = await ref.get();
      final userHabits = docSnapshot.data();

      emit(
        HabitsState.habitsLoaded(userHabits: userHabits?.userHabits ?? []),
      );
    } catch (e) {
      emit(
        HabitsState.habitsLoadingError(
          errorText: e.toString(),
        ),
      );
    }
  }

  _uploadUserHabits(UploadHabits event, Emitter<HabitsState> emit) async {
    String uid = event.userUID;
    final ref = FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('habits')
        .doc('userHabits')
        .withConverter(
          fromFirestore: UserHabitsList.fromFirestore,
          toFirestore: (UserHabitsList userHabits, _) =>
              userHabits.toFirestore(),
        );
    try {
      await ref.set(
        event.userUpdatedHabits,
        SetOptions(merge: true),
      );
      add(HabitsEvent.loadHabits(userUID: uid));
    } catch (e) {
      emit(
        HabitsState.habitsLoadingError(
          errorText: e.toString(),
        ),
      );
    }
  }
}
