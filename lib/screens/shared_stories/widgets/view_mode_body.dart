import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'view_mode_body');

class ViewModeBody extends StatelessWidget {
  final List<SharedStory> randomStories;
  final String uid;

  const ViewModeBody({
    super.key,
    required this.randomStories,
    required this.uid,
  });
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              200,
          child: randomStories.isEmpty
              ? Center(
                  child: Text(
                    l10n.sharedStoriesScreenNoUsersStories,
                    style:
                        MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
                  ),
                )
              : ViewModeWithStories(randomStories: randomStories, uid: uid)),
    );
  }
}
