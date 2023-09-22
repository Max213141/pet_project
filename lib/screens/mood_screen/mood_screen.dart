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
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 25,
            width: MediaQuery.of(context).size.width,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
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
          const CircularMoodScheme(),
          const SizedBox(height: 10),
          const MoodCarouselPicker(),
          Text(
            'How are you today?',
            style: MentalHealthTextStyles.text.signikaFontF24,
          ),
          const SizedBox(height: 22),
          ActionButton(
            title: 'Submit'.toUpperCase(),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
