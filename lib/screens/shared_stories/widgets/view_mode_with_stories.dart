import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class ViewModeWithStories extends StatelessWidget {
  final List<SharedStory> randomStories;
  final String uid;
  const ViewModeWithStories({
    super.key,
    required this.randomStories,
    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    spacing: 10,
                    runSpacing: 5,
                    children: randomStories
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
                                borderRadius:
                                    MentalHealthDecorations.borders.radiusC10,
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
        const SizedBox(height: 12),
        Center(
          child: RefreshButton(
            onPressed: () {
              BlocProvider.of<SharedStoriesBloc>(context).add(
                LoadRandomStoryEvent(userUID: uid),
              );
            },
            size: 100,
          ),
        ),
      ],
    );
  }
}
