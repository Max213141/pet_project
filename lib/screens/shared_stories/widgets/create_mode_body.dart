import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/shared_story.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class CreateModeBody extends StatefulWidget {
  final String uid;
  final List<SharedStory> userStories;

  const CreateModeBody({
    super.key,
    required this.userStories,
    required this.uid,
  });
  @override
  State<CreateModeBody> createState() => _CreateModeBodyState();
}

class _CreateModeBodyState extends State<CreateModeBody> {
  @override
  Widget build(BuildContext context) {
    return widget.userStories.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'You have no stories, add some...',
                style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
              ),
              const SizedBox(
                height: 10,
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
                        userStories: [],
                        uid: widget.uid,
                      ),
                    );
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
                        userStories: widget.userStories,
                        uid: widget.uid,
                      ),
                    );
                  },
                ),
                title: 'Add Story',
              ),
            ],
          );
  }
}
