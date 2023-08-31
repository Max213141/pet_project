import 'package:flutter/material.dart';
import 'package:pet_project/utils/app_colors.dart';
import 'package:pet_project/utils/decorations.dart';
import 'package:pet_project/utils/styles/styles.dart';

class BreathingTimer extends StatelessWidget {
  const BreathingTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width / 2.5 - 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            color: AppColor.buttonsColor),
        child: Center(
          child: Text(
            'START',
            style: MentalHealthTextStyles.text.mainCommonF20,
          ),
        ),
      ),
    );
  }
}
