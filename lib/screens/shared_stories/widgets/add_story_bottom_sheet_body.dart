import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/breathing_screen/widgets/category_item_bottom_sheet_body/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class AddStoryBottomSheetBody extends StatefulWidget {
  const AddStoryBottomSheetBody({super.key});

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
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Description:',
              style: MentalHealthTextStyles.text.popinsSecondaryFontF16,
            ),
          ),
          const SizedBox(height: 4),
          const BreathingGuide(),
          const SizedBox(height: 20),
          ActionButton(
            onPressed: () {
              GoRouter.of(context)
                  .go('/main/breathing/breathing_items/breathe');
            },
            title: 'Create',
          )
        ],
      ),
    );
  }
}
