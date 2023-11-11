import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/breathing_screen/widgets/category_item_bottom_sheet_body/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class CategoryItemBottomSheetBody extends StatelessWidget {
  const CategoryItemBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Breathing 4-7-8',
              style: MentalHealthTextStyles.text.signikaFontF22Bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Each side of the square is one breath cycle: inhale, hold the breath, exhale, hold the breath. As you breathe, consider moving along the side of this square.',
            style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Description:',
              style: MentalHealthTextStyles.text.popinsSecondaryFontF16,
            ),
          ),
          const SizedBox(height: 4),
          const BreathingGuide(),
          const SizedBox(height: 20),
          ActionButton(
            onPressed: () {
              GoRouter.of(context)
                  .go('/main/breathing/breathing_items/breathe');
            },
            title: 'Start',
          )
        ],
      ),
    );
  }
}
