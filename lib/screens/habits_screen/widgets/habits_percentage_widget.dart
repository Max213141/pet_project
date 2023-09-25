import 'package:flutter/material.dart';
import 'package:pet_project/screens/habits_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class HabitsPercentageWidget extends StatelessWidget {
  const HabitsPercentageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.habbitsTileBackground.withOpacity(.9),
            width: 2,
          ),
          borderRadius: MentalHealthDecorations.borders.radiusC15,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46.0, vertical: 10),
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
                  const HabitsPercentageRadialDiagram(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
