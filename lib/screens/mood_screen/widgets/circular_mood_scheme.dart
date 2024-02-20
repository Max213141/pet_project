import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/mood_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class CircularMoodScheme extends StatelessWidget {
  final List<MoodEntry> userDailyMood;
  const CircularMoodScheme({
    super.key,
    required this.userDailyMood,
  });
  final List<ChartInfo> chartDescription = const [
    ChartInfo(color: AppColor.chartHappy, title: 'Happy'),
    ChartInfo(color: AppColor.chartGood, title: 'Good'),
    ChartInfo(color: AppColor.chartMeh, title: 'Meh'),
    ChartInfo(color: AppColor.chartBored, title: 'Bored'),
    ChartInfo(color: AppColor.chartSad, title: 'Sad'),
    ChartInfo(color: AppColor.chartAngry, title: 'Angry'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4.5,
        width: MediaQuery.of(context).size.width - 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC20,
            border: MentalHealthDecorations.borders.chartBorder,
            color: AppColor.primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // const Icon(Icons.arrow_back_ios_new_outlined), //TODO add this functionality
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: MoodPieChart(
                          userDailyMood: userDailyMood,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              DateFormat.MMMM().format(DateTime.now()),
                              style: MentalHealthTextStyles
                                  .text.signikaSecondaryFontF16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chartDescription
                        .map((emotion) => ChartInfoList(emotion: emotion))
                        .toList(),
                  ),
                ),
                // const Icon(Icons.arrow_forward_ios_outlined), //TODO add this functionality
              ],
            ),
          ),
        ),
      ),
    );
  }
}
