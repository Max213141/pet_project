import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/screens/mood_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'mood_screen');

class MoodScreen extends StatefulWidget {
  const MoodScreen({super.key});

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
              width: MediaQuery.of(context).size.width,
              child: const DecoratedBox(
                decoration:
                    BoxDecoration(color: AppColor.primaryBackgroundColor),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 10),
              child: Text(
                'Let\'s check up on your mood',
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
              ),
            ),
            const BarChartSample(),
            const SizedBox(height: 10),
            const CircularMoodScheme(),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'How are you today?',
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
            ),
            const SizedBox(height: 10),
            const MoodCarouselPicker(),
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: ActionButton(
                title: 'Submit'.toUpperCase(),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
