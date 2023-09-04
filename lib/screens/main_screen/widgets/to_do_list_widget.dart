import 'package:flutter/material.dart';
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
        height: MediaQuery.of(context).size.height / 4,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: AppColor.primaryColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: MentalHealthDecorations.borders.radiusC20,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Check out your habbits',
                      style: MentalHealthTextStyles.text.mainSecondaryFontF16
                          .copyWith(fontWeight: FontWeight.w600),
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
