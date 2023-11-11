import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 65,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          color: AppColor.primaryBackgroundColor,
        ),
        child: const Icon(
          Icons.done,
          color: Colors.black,
        ),
      ),
    );
  }
}
