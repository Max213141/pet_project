import 'package:flutter/material.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';

class SharedStoryLoadedBody extends StatelessWidget {
  final bool viewModeSelected;
  final String uid;
  final List<SharedStory> userStories;
  final List<SharedStory> randomStories;

  const SharedStoryLoadedBody({
    super.key,
    required this.viewModeSelected,
    required this.uid,
    required this.userStories,
    required this.randomStories,
  });

  @override
  Widget build(BuildContext context) {
    return viewModeSelected
        ? ViewModeBody(
            uid: uid,
            randomStories: randomStories,
          )
        : CreateModeBody(
            uid: uid,
            userStories: userStories,
          );
  }
}
