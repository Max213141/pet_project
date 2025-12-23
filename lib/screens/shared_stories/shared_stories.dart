import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/hive_entities/user_data.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';
// import 'package:life_sync/utils/utils.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'wall_screen');

class SharedStoriesScreen extends StatefulWidget {
  const SharedStoriesScreen({
    super.key,
  });

  @override
  State<SharedStoriesScreen> createState() => _SharedStoriesScreenState();
}

class _SharedStoriesScreenState extends State<SharedStoriesScreen> {
  bool viewModeSelected = true;
  // bool _showLoader = false;

  late String uid;
  @override
  void initState() {
    UserData? userData = HiveStore().getUserData();
    uid = userData?.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1';
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<SharedStoriesBloc>(context).add(
        LoadRandomStoryEvent(
          userUID: uid,
        ),
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
    return BlocConsumer<SharedStoriesBloc, SharedStoriesState>(
      listener: (context, state) {
        state.whenOrNull();
      },
      builder: (context, state) {
        state.when(
          initial: () => body = const SizedBox.shrink(),
          loading: () => body = const Expanded(
            child: Center(
              child: SizedBox(
                height: 85,
                width: 85,
                child: RepaintBoundary(
                  child: Loader(),
                ),
              ),
            ),
          ),
          storiesUploaded: () {},
          storiesLoaded: (userStories, randomStories) => {
            body = SharedStoryLoadedBody(
              randomStories: randomStories,
              userStories: userStories,
              uid: uid,
              viewModeSelected: viewModeSelected,
            ),
          },
          storiesLoadingError: (errorText) => body = Center(
            child: ErrorDialogWidget(
              message: errorText,
            ),
          ),
        );
        return Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SharedStoriesModePicker(
              viewModeSelected: viewModeSelected,
              switchMode: () => setState(() {
                viewModeSelected = !viewModeSelected;
              }),
            ),
            body,
          ],
        );
      },
    );
  }
}
