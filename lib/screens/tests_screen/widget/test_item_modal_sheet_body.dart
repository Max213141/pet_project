import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class TestItemModalSheetBody extends StatelessWidget {
  final String title;
  const TestItemModalSheetBody({super.key, required this.title});

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
              'This questionnaire is commonly used in surveys to test for depression among respondents. Check the statement that best suits you.This test is for ADULTS. The results obtained when passing the test by children are not reliable.',
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
