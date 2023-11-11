import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/entities/db_entities/shared_story.dart';
import 'package:pet_project/screens/breathing_screen/widgets/widgets.dart';
import 'package:pet_project/screens/shared_stories/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class CreateModeBody extends StatefulWidget {
  final List<SharedStory> userStories;

  const CreateModeBody({super.key, required this.userStories});
  @override
  State<CreateModeBody> createState() => _CreateModeBodyState();
}

class _CreateModeBodyState extends State<CreateModeBody> {
  @override
  Widget build(BuildContext context) {
    return widget.userStories.isEmpty
        ? Column(
            children: [
              Text(
                'You have no stories, add some...',
                style: MentalHealthTextStyles.text.signikaPrimaryFontF22N,
              ),
              const SizedBox(
                height: 10,
              ),
              ActionButton(
                onPressed: () => showModalBottomSheet(
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
                    return const CategoryItemBottomSheetBody();
                  },
                ),
                title: 'Add Story',
              ),
            ],
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Wrap(
                  // alignment: WrapAlignment.spaceBetween,
                  spacing: 10,
                  runSpacing: 5,
                  children: widget.userStories
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
                              borderRadius:
                                  MentalHealthDecorations.borders.radiusC10,
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
                                style: MentalHealthTextStyles
                                    .text.popinsSecondaryFontF14,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ActionButton(
                onPressed: () => showModalBottomSheet(
                  showDragHandle: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return const AddStoryBottomSheetBody();
                  },
                ),
                title: 'Add Story',
              ),
            ],
          );
  }
}
