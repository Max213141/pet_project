import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class MeditationItemModalSheetBody extends StatelessWidget {
  final String title;
  const MeditationItemModalSheetBody({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: MentalHealthTextStyles.text.signikaPrimaryFontF28,
            ),
            const SizedBox(height: 20),
            Text(
              'Sit up straight and place your hands on your knees. Relax your gaze, you can close your eyes. Inhalation must be done through the nose, exhalation through the mouth. When exhaling, the tip of the tongue should touch the tubercle of the upper palate near the upper teeth.',
              style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
            ),
            const SizedBox(
              height: 40,
            ),
            ActionButton(onPressed: () {}, title: 'Start')
          ],
        ),
      ),
    );
  }
}
