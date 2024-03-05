import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/entities/hive_entities/user_data.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'wall_screen');

class SharedStoriesScreen extends StatefulWidget {
  const SharedStoriesScreen({
    super.key,
  });

  @override
  State<SharedStoriesScreen> createState() => _SharedStoriesScreenState();
}

class _SharedStoriesScreenState extends State<SharedStoriesScreen> {
  bool viewModeSelected = true;
  bool _showLoader = false;

  late List<SharedStory> _userStories = [];
  late List<SharedStory> _randomStories = [];
  late String uid;
  @override
  void initState() {
    Box<UserData> userDataBox = HiveStore().getUserDataBox();
    UserData? userData = userDataBox.getAt(0);
    uid = userData?.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1';
    // BlocProvider.of<SharedStoriesBloc>(context)
    //     .add(LoadUserStoriesEvent(userUID: uid));
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
    return BlocListener<SharedStoriesBloc, SharedStoriesState>(
      listener: (BuildContext context, SharedStoriesState state) {
        state.whenOrNull(
          loading: () {
            setState(() {
              _showLoader = !_showLoader;
            });
          },
          storiesUploaded: () {
            setState(() {
              _showLoader = !_showLoader;
            });
          },
          storiesLoaded: (userStories, randomStories) {
            _log('storiesLoaded: USER- $userStories, RANDOM - $randomStories');
            setState(() {
              _userStories = userStories;
              _randomStories = randomStories;
              _showLoader = !_showLoader;
            });
          },
          storiesLoadingError: (errorText) {
            setState(() {
              _showLoader = !_showLoader;
            });
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ErrorDialogWidget(
                  message: errorText,
                );
              },
            );
          },
        );
      },
      child: Stack(
        children: [
          Column(
            children: [
              SharedStoriesModePicker(
                viewModeSelected: viewModeSelected,
                switchMode: () => setState(() {
                  viewModeSelected = !viewModeSelected;
                }),
              ),
              viewModeSelected
                  ? ViewModeBody(
                      uid: uid,
                      randomStories: _randomStories,
                    )
                  : CreateModeBody(
                      uid: uid,
                      userStories: _userStories,
                    ),
            ],
          ),
          if (_showLoader)
            const Center(
              child: SizedBox(
                height: 85,
                width: 85,
                child: RepaintBoundary(child: Loader()),
              ),
            ),
        ],
      ),
    );
  }
}
