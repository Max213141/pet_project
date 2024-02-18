import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';

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

  _loadUserHabits(LoadHabits event, Emitter<HabitsState> emit) {}

  _uploadUserHabits(UploadHabits event, Emitter<HabitsState> emit) {}
}
