import 'package:flutter/material.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/mood_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class CircularMoodScheme extends StatelessWidget {
  final List<dynamic> userDailyMood;
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios_new_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: MoodPieChart(
                          userDailyMood: userDailyMood as List<MoodEntry>,
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
                              'August',
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
                  padding: const EdgeInsets.only(left: 17.0, right: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chartDescription
                        .map((emotion) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: MentalHealthDecorations
                                            .borders.radiusC5,
                                        color: emotion.color,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    emotion.title,
                                    style: MentalHealthTextStyles
                                        .text.popinsSecondaryFontF14,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
