import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_project/utils/utils.dart';

class NewCategoryItem extends StatelessWidget {
  const NewCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      width: MediaQuery.of(context).size.width / 4 - 32,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: MentalHealthDecorations.borders.radiusC20,
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                child: SizedBox(
                  height: 84,
                  width: (MediaQuery.of(context).size.width / 2 - 32) / 2,
                  child: ClipRRect(
                    borderRadius: MentalHealthDecorations.borders.radiusC20,
                    child: SvgPicture.asset(
                      'assets/backgrounds/card_backgound.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  children: [
                    Text(
                      'For beginners',
                      style:
                          MentalHealthTextStyles.text.signikaSecondaryFontF16,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'For beginners',
                      style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
