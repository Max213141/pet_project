import 'package:flutter/material.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

class ChartInfoList extends StatelessWidget {
  final ChartInfo emotion;

  const ChartInfoList({super.key, required this.emotion});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: MentalHealthDecorations.borders.radiusC5,
                color: emotion.color,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            emotion.title,
            style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          ),
        ],
      ),
    );
  }
}
