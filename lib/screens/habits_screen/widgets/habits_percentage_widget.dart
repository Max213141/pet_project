import 'package:flutter/material.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class HabitsPercentageWidget extends StatelessWidget {
  const HabitsPercentageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.habbitsTileBackground.withOpacity(.9),
            width: 2,
          ),
          borderRadius: MentalHealthDecorations.borders.radiusC15,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Keep going!',
                  style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
                ),
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '2',
                          style: MentalHealthTextStyles
                              .text.signikaSecondaryFontF42
                              .copyWith(
                            color: AppColor.primaryBackgroundColor,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: MentalHealthTextStyles
                              .text.signikaSecondaryFontF42,
                        ),
                        TextSpan(
                          text: '7',
                          style: MentalHealthTextStyles
                              .text.signikaSecondaryFontF42,
                        ),
                        TextSpan(
                          text: 'habits',
                          style: MentalHealthTextStyles
                              .text.signikaSecondaryFontF16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 60),
                  const HabitsPercentageRadialDiagram(
                    data: [
                      5 / 7, // uncomplished
                      2 / 7, // complited
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
