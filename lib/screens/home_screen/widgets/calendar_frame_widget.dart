import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class CalendarFrameWidget extends StatelessWidget {
  final Widget child;
  const CalendarFrameWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: MentalHealthDecorations.borders.radiusLeftC40,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
