import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/shared_stories/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class ViewModeBody extends StatefulWidget {
  final List<SharedStory> sharedStories;
  final String? uid;

  const ViewModeBody({
    super.key,
    required this.sharedStories,
    required this.uid,
  });
  @override
  State<ViewModeBody> createState() => _ViewModeBodyState();
}

class _ViewModeBodyState extends State<ViewModeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Wrap(
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
                          style: MentalHealthTextStyles
                              .text.popinsSecondaryFontF14,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          // const Spacer(),
          Center(
              child: ActionButton(
            onPressed: () {
              BlocProvider.of<SharedStoriesBloc>(context).add(
                LoadRandomStoryEvent(
                    iserUID: widget.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1'),
              ); //TODO remove hardcode
            },
            title: 'R',
            width: 50.0,
          )),
        ],
      ),
    );
  }
}
