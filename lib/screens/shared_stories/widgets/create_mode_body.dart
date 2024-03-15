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
    final l10n = l10nOf(context);

    return widget.userStories.isEmpty
        ? SizedBox(
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
                      style: MentalHealthTextStyles
                          .text.signikaPrimaryFontF22Black,
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
                          uid: widget.uid,
                        ),
                      );
                    },
                  ),
                  title: l10n.sharedStoriesScreenAddStory,
                ),
              ],
            ),
          )
        : SizedBox(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 32,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.habbitsTileBackground,
                        ),
                        borderRadius: MentalHealthDecorations.borders.radiusC20,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SingleChildScrollView(
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
                                        return UserStoryBottomSheetBody(
                                          story: story,
                                        );
                                      },
                                    ),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: MentalHealthDecorations
                                            .borders.radiusC10,
                                        border: Border.all(
                                          color: AppColor.habbitsTileBackground,
                                        ),
                                        color: AppColor.sharedStoryChipColor,
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
                      ),
                    ),
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
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: AddStoryBottomSheetBody(
                          userStories: widget.userStories,
                          uid: widget.uid,
                        ),
                      );
                    },
                  ),
                  buttonColor: AppColor.sharedStoryChipColor,
                  title: l10n.sharedStoriesScreenAddStory,
                ),
              ],
            ),
          );
  }
}
