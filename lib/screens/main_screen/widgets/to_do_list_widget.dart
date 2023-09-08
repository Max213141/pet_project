import 'package:flutter/material.dart';
import 'package:pet_project/screens/habbits_screen/widgets/habbits_item.dart';
import 'package:pet_project/utils/app_colors.dart';
import 'package:pet_project/utils/decorations.dart';
import 'package:pet_project/utils/styles/styles.dart';

class ToDoListWidget extends StatefulWidget {
  const ToDoListWidget({super.key});

  @override
  State<ToDoListWidget> createState() => _ToDoListWidgetState();
}

class _ToDoListWidgetState extends State<ToDoListWidget> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: AppColor.primaryColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: MentalHealthDecorations.borders.radiusBTRightC40,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Check out your habbits',
                        style:
                            MentalHealthTextStyles.text.signikaSecondaryFontF16,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) => HabbitsItem(),
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}