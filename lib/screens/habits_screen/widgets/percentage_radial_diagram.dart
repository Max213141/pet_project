import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HabitsPercentageRadialDiagram extends StatelessWidget {
  final List<double> data; // Пропорциональные данные (в виде долей)

  HabitsPercentageRadialDiagram(this.data);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200.0, 200.0),
      painter: CircleChartPainter(data),
    );
  }
}

class CircleChartPainter extends CustomPainter {
  final List<double> data;
  CircleChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..style = PaintingStyle.fill;

    double total = data.reduce((a, b) => a + b);
    double startAngle = 0.0;

    for (var i = 0; i < data.length; i++) {
      double sweepAngle = 2 * pi * data[i] / total;

      paint.color = Colors.accents[i % Colors.accents.length];
      canvas.drawArc(
        Rect.fromLTWH(0.0, 0.0, size.width, size.height),
        startAngle,
        sweepAngle,
        true,
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
