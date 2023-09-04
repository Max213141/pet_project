import 'dart:math';

import 'package:flutter/rendering.dart';

class InvertedRoundedRectanglePainter extends CustomPainter {
  InvertedRoundedRectanglePainter({
    required this.radius,
    required this.color,
  });

  final double radius;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final cornerSize = Size.square(radius * 2);
    canvas.drawPath(
      Path()
        ..addArc(
          // top-left arc
          Offset(0, -radius) & cornerSize,
          // 180 degree startAngle (left of circle)
          pi,
          // -90 degree sweepAngle (counter-clockwise to the bottom)
          -pi / 2,
        )
        ..arcTo(
          // top-right arc
          Offset(size.width - cornerSize.width, -radius) & cornerSize,
          // 90 degree startAngle (bottom of circle)
          pi / 2,
          // -90 degree sweepAngle (counter-clockwise to the right)
          -pi / 2,
          false,
        )
        // bottom right of painter
        ..lineTo(size.width, size.height)
        // bottom left of painter
        ..lineTo(0, size.height),
      Paint()..color = color,
    );
  }

  @override
  bool shouldRepaint(InvertedRoundedRectanglePainter oldDelegate) =>
      oldDelegate.radius != radius || oldDelegate.color != color;
}
