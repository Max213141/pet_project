import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
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
    final l10n = l10nOf(context);
    final locale = BlocProvider.of<LocaleBloc>(context).state.locale;

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
                l10n.moodScreenPhrase,
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
              ),
            ),
            MentalHealthBarChart(
              userDailyMood: moodEntries,
              l10n: l10n,
              locale: locale,
            ),
            const SizedBox(height: 10),
            CircularMoodScheme(
              userDailyMood: moodEntries,
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                l10n.howAreYou,
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
            ),
            const SizedBox(height: 10),
            MoodCarouselPicker(
              userCurrentMood: moodEntries.firstWhere(
                (element) {
                  return element.trackedDay.toDate().day == DateTime.now().day;
                },
                orElse: () => MoodEntry(
                  mood: 5,
                  trackedDay: Timestamp.now(),
                ),
              ),
              moodEntries: moodEntries,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
