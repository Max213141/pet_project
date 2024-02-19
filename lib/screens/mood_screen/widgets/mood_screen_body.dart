import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/mood_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class MoodScreenBody extends StatelessWidget {
  final List<MoodEntry> moodEntries;
  const MoodScreenBody({
    super.key,
    required this.moodEntries,
  });

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
            CircularMoodScheme(
              userDailyMood: moodEntries,
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'How are you today?',
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
            ),
            const SizedBox(height: 10),
            MoodCarouselPicker(
              userCurrentMood: moodEntries.firstWhere(
                (element) {
                  // _log(
                  //     'mood entry from state date - ${element.trackedDay.toDate().day}');
                  // _log(
                  //     'mood entry from state - ${element.trackedDay.toDate().day}');
                  // _log('day - ${DateTime.now().day}');

                  return element.trackedDay.toDate().day == DateTime.now().day;
                },
                orElse: () => MoodEntry(
                  mood: 'Good',
                  trackedDay: Timestamp.now(),
                ),
              ),
              moodEntries: moodEntries,
            ),
          ],
        ),
      ),
    );
  }
}
