import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

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
    return List.generate(6, (i) {
      // final isTouched = i == touchedIndex;
      // final fontSize = isTouched ? 25.0 : 16.0;
      // final radius = isTouched ? 60.0 : 50.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColor.chartMeh,
            // value: 20,
            // title: '20%',
            // radius: radius,
            // titleStyle: MentalHealthTextStyles.text
          );
        case 1:
          return PieChartSectionData(
            color: AppColor.chartAngry,
            // value: 30,
            // title: '30%',
            // radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.black,
            //   shadows: shadows,
            // ),
          );
        case 2:
          return PieChartSectionData(
            color: AppColor.chartHappy,
            // value: 15,
            // title: '15%',
            // radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.black,
            //   shadows: shadows,
            // ),
          );
        case 3:
          return PieChartSectionData(
            color: AppColor.chartGood,
            // value: 15,
            // title: '15%',
            // radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.black,
            //   shadows: shadows,
            // ),
          );
        case 4:
          return PieChartSectionData(
            color: AppColor.chartBored,
            // value: 15.50,
            // title: '15.5%',
            // radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.black,
            //   shadows: shadows,
            // ),
          );
        case 5:
          return PieChartSectionData(
            color: AppColor.chartSad,
            // value: 4.50,
            // title: '4.5%',
            // radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.black,
            //   shadows: shadows,
            // ),
          );
        default:
          throw Error();
      }
    });
  }
}
