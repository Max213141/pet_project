import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double size;
  final Color color;
  final Color backgroundColor;
  final String message;

  const Loader({
    super.key,
    this.size = 50,
    this.color = Colors.white,
    this.backgroundColor = Colors.black54,
    this.message = '',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: ModalBarrier(
            dismissible: false,
            color: backgroundColor,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size,
                height: size,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(color),
                ),
              ),
              if (message.isNotEmpty) SizedBox(height: 16),
              if (message.isNotEmpty)
                Text(
                  message,
                  style: TextStyle(
                    color: color,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
