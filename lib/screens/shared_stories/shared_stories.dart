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
  const SharedStoriesScreen({super.key});

  @override
  State<SharedStoriesScreen> createState() => _SharedStoriesScreenState();
}

class _SharedStoriesScreenState extends State<SharedStoriesScreen> {
  bool viewModeSelected = true;
  bool _showLoader = false;
  late String uid;
  @override
  void initState() {
    Box<UserData> userDataBox = HiveStore().getUserDataBox();
    UserData? userData = userDataBox.getAt(0);
    uid = userData!.uid!;

    super.initState();
  }

  final List<SharedStory> sharedStories = [
    const SharedStory(
      title: 'Gaslighted',
      description: 'He said I didn\'t done it before',
    ),
    const SharedStory(
      title: 'Abused',
      description: 'He is abuser',
    ),
    const SharedStory(
      title: 'Stress',
      description: 'He shouted on me',
    ),
    const SharedStory(
      title: 'Lie',
      description: 'He lied',
    ),
    const SharedStory(
      title: 'Disappointment',
      description: 'He lied',
    ),
    const SharedStory(
      title: 'Disappointment',
      description: 'He lied',
    ),
    const SharedStory(
      title: 'Lie',
      description: 'He lied',
    ),
    const SharedStory(
      title: 'Lie',
      description: 'He lied',
    ),
    const SharedStory(
      title: 'Disappointment',
      description: 'He lied',
    ),
    const SharedStory(
      title: 'Lie',
      description: 'He lied',
    ),
  ];

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
            setState(() {
              _showLoader = !_showLoader;
            });
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
                      sharedStories: sharedStories,
                    )
                  : CreateModeBody(
                      uid: uid,
                      userStories: sharedStories,
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
