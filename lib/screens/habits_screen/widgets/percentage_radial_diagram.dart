import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';
import 'dart:math';

class HabitsPercentageRadialDiagram extends StatelessWidget {
  final List<double> data; // Пропорциональные данные (в виде долей)

  const HabitsPercentageRadialDiagram({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 85,
      child: Stack(children: [
        Positioned.fill(
          child: CustomPaint(
            size: const Size(85, 85),
            painter: CircleChartPainter(data),
          ),
        ),
        Positioned(
          // top: 42 / 2,
          // left: 42 / 2,
          child: Center(
            child: Text(
              '${((2 * 100) / 7).round()}%',
              style: MentalHealthTextStyles.text.signikaFontF22Bold,
            ),
          ),
        )
      ]),
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
