import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/shared_stories/widgets/add_story_bottom_sheet_body.dart';
import 'package:life_sync/utils/utils.dart';

class CreateModeEmptyBody extends StatelessWidget {
  final String uid;
  const CreateModeEmptyBody({super.key, required this.uid});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return SizedBox(
      height: MediaQuery.of(context).size.height -
          AppBar().preferredSize.height -
          200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Text(
                l10n.sharedStoriesScreenNoStories,
                style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
              ),
            ),
          ),
          ActionButton(
            onPressed: () => showModalBottomSheet(
              showDragHandle: true,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              context: context,
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddStoryBottomSheetBody(
                    userStories: const [],
                    uid: uid,
                  ),
                );
              },
            ),
            title: l10n.sharedStoriesScreenAddStory,
          ),
        ],
      ),
    );
  }
}
