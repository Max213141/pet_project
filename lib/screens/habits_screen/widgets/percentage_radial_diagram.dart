import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/utils/utils.dart';

class HabitsPercentageRadialDiagram extends StatefulWidget {
  const HabitsPercentageRadialDiagram({super.key});

  @override
  State<HabitsPercentageRadialDiagram> createState() =>
      _HabitsPercentageRadialDiagramState();
}

class _HabitsPercentageRadialDiagramState
    extends State<HabitsPercentageRadialDiagram> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 85,
      child: AspectRatio(
        aspectRatio: .5,
        child: PieChart(
          PieChartData(
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 30,
            sections: showingSections(),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
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
        default:
          throw Error();
      }
    });
  }
}
