import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'pie_chart_widget');

class MoodPieChart extends StatefulWidget {
  final List<MoodEntry> userDailyMood;
  const MoodPieChart({
    super.key,
    required this.userDailyMood,
  });

  @override
  State<MoodPieChart> createState() => MoodPieChartState();
}

class MoodPieChartState extends State<MoodPieChart> {
  int touchedIndex = -1;
  late List<MoodEntry> _moodEntriesThisMonth;
  late Map<int, double> moodPercentage = {};

  @override
  void initState() {
    super.initState();
    _moodEntriesThisMonth = widget.userDailyMood.where((entry) {
      return entry.trackedDay.toDate().month == DateTime.now().month;
    }).toList();
    Map<int, int> moodCount = {};
    for (var entry in _moodEntriesThisMonth) {
      moodCount[entry.mood] =
          moodCount.containsKey(entry.mood) ? moodCount[entry.mood]! + 1 : 1;
    }
    int totalDaysInMonth =
        DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;
    _log('Total days in month $totalDaysInMonth');
    moodCount.forEach((moodGrade, count) {
      moodPercentage[moodGrade] = (count / totalDaysInMonth) * 100;
      //  = double.parse(percentage.toStringAsFixed(2)); // I dont know how necessary not rounded percentage
    });
    _log('Total days in month $moodPercentage');
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .7,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 30,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    double unfilledPercentage = 100 -
        (moodPercentage[1] ?? 0) +
        (moodPercentage[2] ?? 0) +
        (moodPercentage[3] ?? 0) +
        (moodPercentage[4] ?? 0) +
        (moodPercentage[5] ?? 0) +
        (moodPercentage[6] ?? 0);
    return List.generate(7, (i) {
      // final isTouched = i == touchedIndex;
      // final fontSize = isTouched ? 16.0 : 8.0;
      // final radius = isTouched ? 60.0 : 50.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColor.chartMeh,
            value: moodPercentage[4] ?? 0,
            showTitle: false,
            // title: '20%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        case 1:
          return PieChartSectionData(
            color: AppColor.chartAngry,
            value: moodPercentage[1] ?? 0,
            showTitle: false,
            // title: '30%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        case 2:
          return PieChartSectionData(
            color: AppColor.chartHappy,
            value: moodPercentage[6] ?? 0,
            showTitle: false,
            // title: '15%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        case 3:
          return PieChartSectionData(
            color: AppColor.chartGood,
            value: moodPercentage[5] ?? 0,
            showTitle: false,
            // title: '15%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        case 4:
          return PieChartSectionData(
            color: AppColor.chartBored,
            value: moodPercentage[3] ?? 0,
            showTitle: false,
            // title: '15.5%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        case 5:
          return PieChartSectionData(
            color: AppColor.chartSad,
            value: moodPercentage[2] ?? 0,
            showTitle: false,

            // title: '4.5%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        case 6:
          return PieChartSectionData(
            color: Colors.grey.shade200,
            value: unfilledPercentage,
            showTitle: false,
            // title: '4.5%',
            // radius: radius,
            titleStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          );
        default:
          throw Error();
      }
    });
  }
}
