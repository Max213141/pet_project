import 'package:flutter/material.dart';

class CircleLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;
    canvas.drawLine(
      Offset(size.width / 2, size.height / 2),
      Offset(size.width / 2 + 20, size.height / 2 + 20),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
