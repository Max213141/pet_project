import 'package:flutter/material.dart';
import 'package:life_sync/utils/utils.dart';

class Loader extends StatelessWidget {
  final double size;
  final Color color;
  final Color backgroundColor;
  final String message;

  const Loader({
    super.key,
    this.size = 50,
    this.color = AppColor.primaryColor,
    this.backgroundColor = AppColor.primaryBackgroundColor,
    this.message = '',
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          color: backgroundColor.withOpacity(.5)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(color),
          ),
        ),
      ),
    );
  }
}
