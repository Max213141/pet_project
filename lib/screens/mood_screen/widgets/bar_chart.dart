import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'bar_chart');

class MentalHealthBarChart extends StatefulWidget {
  final AppLocalizations l10n;
  final List<MoodEntry> userDailyMood;
  final String locale;

  const MentalHealthBarChart({
    super.key,
    required this.userDailyMood,
    required this.l10n,
    required this.locale,
  });

  @override
  State<StatefulWidget> createState() => MentalHealthBarChartState();
}

class MentalHealthBarChartState extends State<MentalHealthBarChart> {
  List<String> datesWithAbbreviation = [];
  DateTime now = DateTime.now();
  late List<MoodEntry> moodEntriesByDays = [];

  @override
  initState() {
    super.initState();

    DateTime firstDayOfCurrentWeek =
        now.subtract(Duration(days: now.weekday - 1));
    for (int i = 0; i < 7; i++) {
      DateTime currentDate = firstDayOfCurrentWeek.add(Duration(days: i));
      MoodEntry entryForCurrentDate = widget.userDailyMood.firstWhere(
        (entry) {
          final entryDate = entry.trackedDay.toDate();
          return entryDate.year == currentDate.year &&
              entryDate.month == currentDate.month &&
              entryDate.day == currentDate.day;
        },
        orElse: () => MoodEntry.defaultEntry(),
      ); // Assuming MoodEntry has a default constructor
      _log('$i day entry - ${entryForCurrentDate.mood}');

      moodEntriesByDays.add(entryForCurrentDate);
    }

    for (int i = 0; i < 7; i++) {
      DateTime date = firstDayOfCurrentWeek.add(Duration(days: i));
      String formattedDate = DateFormat(
        'MMM d',
        widget.locale,
      ).format(date);
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
    final locale = BlocProvider.of<LocaleBloc>(context).state.locale;

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
                              reservedSize: locale == 'en' ? 45 : 60,
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
        text = widget.l10n.emotionAngry;
        break;
      case 1:
        text = widget.l10n.emotionSad;
        break;
      case 2:
        text = widget.l10n.emotionBored;
        break;
      case 3:
        text = widget.l10n.emotionMeh;
        break;
      case 4:
        text = widget.l10n.emotionGood;
        break;
      case 5:
        text = widget.l10n.emotionHappy;
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

  List<double> mapMoodsToInt(List<MoodEntry> moodEntries) {
    Map<int, double> moodToIntMapping = {
      1: 0.1,
      2: 1,
      3: 2,
      4: 3,
      5: 4,
      6: 5,
    };

    List<double> mappedIntegers = [];
    for (var entry in moodEntries) {
      double mappedInt = moodToIntMapping[entry.mood] ??
          0; // Default value if mood is not found
      mappedIntegers.add(mappedInt);
    }
    _log(mappedIntegers);
    return mappedIntegers;
  }

  List<Color> mapMoodsToColor(List<MoodEntry> moodEntries) {
    Map<int, Color> moodToIntMapping = {
      1: AppColor.chartAngry.withOpacity(.5),
      2: AppColor.chartSad.withOpacity(.5),
      3: AppColor.chartBored.withOpacity(.5),
      4: AppColor.chartMeh.withOpacity(.5),
      5: AppColor.chartsColor.withOpacity(.75),
      6: AppColor.chartHappy.withOpacity(.5),
    };

    List<Color> mappedColors = [];
    for (var entry in moodEntries) {
      Color mappedColor = moodToIntMapping[entry.mood] ??
          Colors.transparent; // Default value if mood is not found
      mappedColors.add(mappedColor);
    }

    return mappedColors;
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    List<double> emotionBarsHeights = mapMoodsToInt(moodEntriesByDays);
    List<Color> emotionBarsColors = mapMoodsToColor(moodEntriesByDays);

    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            color: emotionBarsColors[0],
            toY: emotionBarsHeights[0],
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
            color: emotionBarsColors[1],
            toY: emotionBarsHeights[1],
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
            color: emotionBarsColors[2],
            toY: emotionBarsHeights[2],
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
            color: emotionBarsColors[3],
            toY: emotionBarsHeights[3],
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
            color: emotionBarsColors[4],
            toY: emotionBarsHeights[4],
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
            color: emotionBarsColors[5],
            toY: emotionBarsHeights[5],
            //
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
            color: emotionBarsColors[6],
            toY: emotionBarsHeights[6],
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            width: barsWidth,
          ),
        ],
      ),
    ];
  }
}
