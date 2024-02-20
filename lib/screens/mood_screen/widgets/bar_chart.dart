import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

class BarChartSample extends StatefulWidget {
  final List<MoodEntry> userDailyMood;

  const BarChartSample({
    super.key,
    required this.userDailyMood,
  });

  @override
  State<StatefulWidget> createState() => BarChartSampleState();
}

class BarChartSampleState extends State<BarChartSample> {
  List<String> datesWithAbbreviation = [];

  @override
  initState() {
    super.initState();

    DateTime now = DateTime.now();
    DateTime firstDayOfCurrentWeek =
        now.subtract(Duration(days: now.weekday - 1));

    for (int i = 0; i < 7; i++) {
      DateTime date = firstDayOfCurrentWeek.add(Duration(days: i));
      String formattedDate = DateFormat('MMM d').format(date);
      datesWithAbbreviation.add(formattedDate);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const barsSpace = 15.0;
    const barsWidth = 30.0;

    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.1,
      width: MediaQuery.of(context).size.width - 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC15,
            color: AppColor.primaryBackgroundColor,
          ),
          child: AspectRatio(
            aspectRatio: 0.8,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 6),
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.center,
                        barTouchData: BarTouchData(
                          enabled: false,
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              // reservedSize: 28,
                              getTitlesWidget: bottomTitles,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 45,
                              interval: 1.0,
                              getTitlesWidget: leftTitles,
                            ),
                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        gridData: FlGridData(
                          show: true,
                          // checkToShowHorizontalLine: (value) => value % 10 == 0,
                          getDrawingHorizontalLine: (value) => FlLine(
                            color: AppColor.chartsColor.withOpacity(.5),
                            strokeWidth: 1,
                          ),

                          drawVerticalLine: false,
                        ),
                        extraLinesData: ExtraLinesData(
                          horizontalLines: [
                            HorizontalLine(
                              y: 0,
                              color: AppColor.chartsColor.withOpacity(.5),
                              strokeWidth: 1,
                            ),
                            HorizontalLine(
                              y: 5,
                              color: AppColor.chartsColor.withOpacity(.5),
                              strokeWidth: 1,
                            )
                          ],
                          extraLinesOnTop: true,
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        groupsSpace: barsSpace,
                        barGroups: getData(barsWidth, barsSpace),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = datesWithAbbreviation[0];
        break;
      case 1:
        text = datesWithAbbreviation[1];
        break;
      case 2:
        text = datesWithAbbreviation[2];
        break;
      case 3:
        text = datesWithAbbreviation[3];
        break;
      case 4:
        text = datesWithAbbreviation[4];
        break;
      case 5:
        text = datesWithAbbreviation[5];
        break;
      case 6:
        text = datesWithAbbreviation[6];
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        text,
        style: MentalHealthTextStyles.text.popinsSecondaryFontF12.copyWith(
          color: AppColor.chartsColor,
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Angry';
        break;
      case 1:
        text = 'Sad';
        break;
      case 2:
        text = 'Bored';
        break;
      case 3:
        text = 'Meh';
        break;
      case 4:
        text = 'Good';
        break;
      case 5:
        text = 'Happy';
        break;
      default:
        text = '';
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        text,
        style: MentalHealthTextStyles.text.popinsSecondaryFontF12.copyWith(
          color: AppColor.chartsColor,
        ),
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 2,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 200000, widget.dark),
            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 1,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 11000, widget.dark),
            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 0,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 60000, widget.dark),
            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 1,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 10000.5, widget.dark),
            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 3,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 10000.5, widget.dark),
            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 4,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 10000.5, widget.dark),

            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: AppColor.chartsColor.withOpacity(.75),
            toY: 5,
            // rodStackItems: [
            //   BarChartRodStackItem(0, 10000.5, widget.dark),
            // ],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
    ];
  }
}
