import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/shared_story.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';

class CreateModeBody extends StatelessWidget {
  final String uid;
  final List<SharedStory> userStories;

  const CreateModeBody({
    super.key,
    required this.userStories,
    required this.uid,
  });
  @override
  Widget build(BuildContext context) {
    return userStories.isEmpty
        ? CreateModeEmptyBody(uid: uid)
        : CreateModeFullBody(userStories: userStories, uid: uid);
  }
}
