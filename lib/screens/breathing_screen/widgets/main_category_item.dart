import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/utils/utils.dart';

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).go('/main/breathing/breathing_items'),
      child: SizedBox(
        height: 210,
        width: MediaQuery.of(context).size.width / 2 - 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: MentalHealthDecorations.borders.radiusC20,
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 4.0),
                  child: SizedBox(
                    height: 130,
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
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'For beginners',
                    style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'For beginners',
                    style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
