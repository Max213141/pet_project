import 'package:flutter/material.dart';
import 'package:pet_project/entities/entities.dart';
import 'package:pet_project/utils/utils.dart';

class CircularMoodScheme extends StatelessWidget {
  const CircularMoodScheme({
    super.key,
  });
  final List<ChartInfo> description = const [
    // ChartInfo(color: AppColor., title: title)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width - 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: MentalHealthDecorations.borders.radiusC20,
            border: MentalHealthDecorations.borders.chartBorder,
            color: AppColor.primaryColor,
          ),
          child: Row(
            children: [
              Center(child: Text('Chart')),
              Column(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
