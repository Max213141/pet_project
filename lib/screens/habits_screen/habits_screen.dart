import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:life_sync/blocs/habits_bloc/habits_bloc.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'habits_screen');

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key});

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  late String uid;
  @override
  void initState() {
    Box<UserData> userDataBox = HiveStore().getUserDataBox();
    UserData? userData = userDataBox.getAt(0);
    uid = userData?.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1';
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<HabitsBloc>(context).add(
        LoadHabits(userUID: uid),
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
              height: 85,
              width: 85,
              child: RepaintBoundary(child: Loader()),
            ),
          ),
          habitsLoaded: (habitsList) => {
            // _log('mood entries from state - $moodEntries'),
            body = HabitsScreenBody(uid: uid, habitsList: habitsList),
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
