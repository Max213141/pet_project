import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';
import 'dart:math';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'percentage_radial_diagram');

class HabitsPercentageRadialDiagram extends StatelessWidget {
  // final List<double> data; // Пропорциональные данные (в виде долей)
  final int unfinishedHabits;
  final int finishedHabits;
  final int totalTodayHabits;

  const HabitsPercentageRadialDiagram({
    super.key,
    // required this.data,
    required this.unfinishedHabits,
    required this.finishedHabits,
    required this.totalTodayHabits,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height > 710 ? 105 : 85,
        // width: 95
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: CircleChartPainter(
                  [
                    totalTodayHabits == 0
                        ? 1
                        : unfinishedHabits / totalTodayHabits, // uncomplished
                    totalTodayHabits == 0
                        ? 0
                        : finishedHabits / totalTodayHabits, // complited
                  ],
                ),
              ),
            ),
            Positioned(
              child: Center(
                child: Text(
                  totalTodayHabits == 0
                      ? '0%'
                      : '${((finishedHabits * 100) / totalTodayHabits).round()}%',
                  style: MentalHealthTextStyles.text.signikaFontF22Bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleChartPainter extends CustomPainter {
  final List<double> data;
  CircleChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;

    double total = data.reduce((a, b) => a + b);
    double startAngle = -pi / 2;

    for (var i = 0; i < data.length; i++) {
      double sweepAngle = -2 * pi * data[i] / total;

      paint.color =
          AppColor.radialDiagramColors[i % AppColor.radialDiagramColors.length];

      canvas.drawArc(
        Rect.fromLTWH(10.0, 10.0, size.width - 20.0, size.height - 20.0),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
