import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

class UserStoryBottomSheetBody extends StatelessWidget {
  final SharedStory story;
  const UserStoryBottomSheetBody({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                story.title,
                style: MentalHealthTextStyles.text.signikaFontF22Bold,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                story.description,
                style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
              ),
            ),
            const Spacer(),
            ActionButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              title: 'Ok',
            )
          ],
        ),
      ),
    );
  }
}
