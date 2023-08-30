import 'package:flutter/material.dart';
import 'package:pet_project/screens/breathing_item_screen/widgets/widgets.dart';

class BreathingGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BreathingGuideItem(),
        BreathingGuideItem(),
        BreathingGuideItem(),
        BreathingGuideItem(),
      ],
    );
  }
}
