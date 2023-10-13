import 'package:flutter/material.dart';
import 'package:pet_project/entities/db_entities/db_entities.dart';
import 'package:pet_project/screens/shared_stories/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'wall_screen');

class SharedStoriesScreen extends StatefulWidget {
  const SharedStoriesScreen({super.key});

  @override
  State<SharedStoriesScreen> createState() => _SharedStoriesScreenState();
}

class _SharedStoriesScreenState extends State<SharedStoriesScreen> {
  bool viewModeSelected = true;

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
    return Column(
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
    );
  }
}
