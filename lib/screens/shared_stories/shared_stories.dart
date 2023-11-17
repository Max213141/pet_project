import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
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

  final List<SharedStory> sharedStories = [
    const SharedStory(
      title: 'Gaslighted',
      decriptions: 'He said I didn\'t done it before',
    ),
    const SharedStory(
      title: 'Abused',
      decriptions: 'He is abuser',
    ),
    const SharedStory(
      title: 'Stress',
      decriptions: 'He shouted on me',
    ),
    const SharedStory(
      title: 'Lie',
      decriptions: 'He lied',
    ),
    const SharedStory(
      title: 'Disappointment',
      decriptions: 'He lied',
    ),
    const SharedStory(
      title: 'Disappointment',
      decriptions: 'He lied',
    ),
    const SharedStory(
      title: 'Lie',
      decriptions: 'He lied',
    ),
    const SharedStory(
      title: 'Lie',
      decriptions: 'He lied',
    ),
    const SharedStory(
      title: 'Disappointment',
      decriptions: 'He lied',
    ),
    const SharedStory(
      title: 'Lie',
      decriptions: 'He lied',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<SharedStoriesBloc, SharedStoriesState>(
      listener: (BuildContext context, SharedStoriesState state) {
        state.whenOrNull(uploadingStories: () {
          setState(() {
            _showLoader = !_showLoader;
          });
        }, storiesLoaded: (userStories, randomStories) {
          setState(() {
            _showLoader = !_showLoader;
          });
        });
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
                      sharedStories: sharedStories,
                    )
                  : CreateModeBody(
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
