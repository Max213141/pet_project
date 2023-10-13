import 'package:flutter/material.dart';
import 'package:pet_project/entities/db_entities/db_entities.dart';
import 'package:pet_project/screens/shared_stories/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class ViewModeBody extends StatefulWidget {
  final List<SharedStory> sharedStories;

  const ViewModeBody({super.key, required this.sharedStories});
  @override
  State<ViewModeBody> createState() => _ViewModeBodyState();
}

class _ViewModeBodyState extends State<ViewModeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Wrap(
        // alignment: WrapAlignment.spaceBetween,
        spacing: 10,
        runSpacing: 5,
        children: widget.sharedStories
            .map(
              (story) => GestureDetector(
                onTap: () => showModalBottomSheet(
                  useSafeArea: true,
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
                    return UserStoryBottomSheetBody(story: story);
                  },
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: MentalHealthDecorations.borders.radiusC10,
                    border: Border.all(
                      color: AppColor.habbitsTileBackground,
                    ),
                    color: AppColor.shredStoryChipColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Text(
                      story.title,
                      style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
