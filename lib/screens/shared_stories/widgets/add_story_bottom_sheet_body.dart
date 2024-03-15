import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

class AddStoryBottomSheetBody extends StatefulWidget {
  final String uid;
  final List<SharedStory> userStories;
  const AddStoryBottomSheetBody({
    super.key,
    required this.uid,
    required this.userStories,
  });

  @override
  State<AddStoryBottomSheetBody> createState() =>
      _AddStoryBottomSheetBodyState();
}

class _AddStoryBottomSheetBodyState extends State<AddStoryBottomSheetBody> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     'Title',
          //     style: MentalHealthTextStyles.text.signikaFontF22Bold,
          //   ),
          // ),
          // const SizedBox(height: 10),
          CustomFormFieldWidget(
            title: l10n.sharedStoriesScreenCreationStoryTitle,
            controller: titleController,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return l10n.sharedStoriesScreenCreationStoryTitleEmpty;
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          CustomFormFieldWidget(
            title: l10n.sharedStoriesScreenCreationStoryDescription,
            controller: descriptionController,
            maxLength: 150,
            maxLines: 3,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return l10n.sharedStoriesScreenCreationStoryDescriptionEmpty;
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          ActionButton(
            onPressed: () {
              List<SharedStory> modifiedList = List.from(widget.userStories);
              modifiedList.add(SharedStory(
                title: titleController.text,
                description: descriptionController.text,
              ));
              BlocProvider.of<SharedStoriesBloc>(context).add(
                AddSharedStoriesEvent(
                  userUID: widget.uid,
                  stories: modifiedList,
                ),
              );

              GoRouter.of(context).pop();
            },
            title: l10n.create,
          )
        ],
      ),
    );
  }
}
