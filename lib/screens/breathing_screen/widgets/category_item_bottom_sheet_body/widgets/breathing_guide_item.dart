import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';

class BreathingGuideItem extends StatelessWidget {
  const BreathingGuideItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MentalHealthSvgPicture(
          picture: 'assets/breathing_images/hold.svg',
          alignment: Alignment.topCenter,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          '4s \n hold',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
