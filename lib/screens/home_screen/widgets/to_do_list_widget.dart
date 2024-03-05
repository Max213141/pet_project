import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';

class ToDoListWidget extends StatefulWidget {
  const ToDoListWidget({super.key});

  @override
  State<ToDoListWidget> createState() => _ToDoListWidgetState();
}

class _ToDoListWidgetState extends State<ToDoListWidget> {
  late String uid;

  @override
  void initState() {
    super.initState();
    UserData? userData = HiveStore().getUserData();
    uid = userData?.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1';

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<HabitsBloc>(context).add(
        LoadHabits(
          userUID: uid,
          isHomeScreen: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget body = const SizedBox.shrink();
    return BlocConsumer<HabitsBloc, HabitsState>(
      listener: (context, state) {
        state.whenOrNull();
      },
      builder: (context, state) {
        state.when(
          initial: () => body = const SizedBox.shrink(),
          loading: () => body = const Center(
            child: SizedBox(
              height: 45,
              width: 45,
              child: RepaintBoundary(
                child: Loader(size: 25),
              ),
            ),
          ),
          habitsLoaded: (habitsList) => {
            // _log('mood entries from state - $moodEntries'),
            body = TodoListWidgetBody(uid: uid, habitsList: habitsList),
          },
          habitsUploaded: () {},
          habitsLoadingError: (errorText) => body = Center(
            child: ErrorDialogWidget(
              message: errorText,
            ),
          ),
        );
        return body;
      },
    );
  }
}
