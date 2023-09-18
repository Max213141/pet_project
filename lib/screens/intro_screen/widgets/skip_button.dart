import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

class SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 65,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            color: AppColor.primaryBackgroundColor),
        child: const RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
