import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/mood_screen/widgets/widgets.dart';
// import 'package:life_sync/utils/utils.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'mood_screen');

class MoodScreen extends StatefulWidget {
  const MoodScreen({super.key});

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  late String uid;
  // late List<MoodEntry> _userDailyMood = [];

  @override
  void initState() {
    UserData? userData = HiveStore().getUserData();
    uid = userData?.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1';
    // BlocProvider.of<SharedStoriesBloc>(context)
    //     .add(LoadUserStoriesEvent(userUID: uid));
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<MoodBloc>(context).add(
        LoadUserMoodData(userUID: uid),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget body = const SizedBox.shrink();
    return BlocConsumer<MoodBloc, MoodState>(
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
          moodLoaded: (moodEntries) => {
            // _log('mood entries from state - $moodEntries'),
            body = MoodScreenBody(
              moodEntries: moodEntries,
            ),
          },
          moodLoadingError: (errorText) => body = Center(
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
