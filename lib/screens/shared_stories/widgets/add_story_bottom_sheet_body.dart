import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';

class AddStoryBottomSheetBody extends StatefulWidget {
  final String uid;
  const AddStoryBottomSheetBody({super.key, required this.uid});

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
            title: 'Title',
            controller: titleController,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Enter title';
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          CustomFormFieldWidget(
            title: 'Description',
            controller: descriptionController,
            maxLength: 150,
            maxLines: 3,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Enter description';
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          ActionButton(
            onPressed: () {
              BlocProvider.of<SharedStoriesBloc>(context).add(
                AddSharedStoriesEvent(
                  iserUID: widget.uid,
                  stories: [
                    SharedStory(
                      title: titleController.text,
                      description: descriptionController.text,
                    )
                  ],
                ),
              );
              GoRouter.of(context).pop();
            },
            title: 'Create',
          )
        ],
      ),
    );
  }
}
