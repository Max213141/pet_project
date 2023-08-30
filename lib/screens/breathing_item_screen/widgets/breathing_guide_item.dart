import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreathingGuideItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/breathing_images/hold.svg',
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
