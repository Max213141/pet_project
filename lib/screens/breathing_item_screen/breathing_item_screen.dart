import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/screens/breathing_item_screen/widgets/widgets.dart';

import 'package:pet_project/utils/utils.dart';

class BreathingItemScreen extends StatefulWidget {
  final String title;
  const BreathingItemScreen({super.key, required this.title});
  @override
  State<BreathingItemScreen> createState() => _BreathingItemScreenState();
}

class _BreathingItemScreenState extends State<BreathingItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.mainDarkColor,
            size: 24,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Added to favorite!'))),
            child: const Icon(
              Icons.heart_broken_rounded,
              color: Color(0xFFFF8B72),
            ),
          ),
        ],
        titleTextStyle: GoogleFonts.sansita(fontSize: 24, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width - 92,
                child: ClipRRect(
                  borderRadius: MentalHealthDecorations.borders.radiusC20,
                  child: SvgPicture.asset(
                    'assets/backgrounds/card_backgound.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Each side of the square is one breath cycle: inhale, hold the breath, exhale, hold the breath. As you breathe, consider moving along the side of this square.',
                style: MentalHealthTextStyles.text.mainCommonF14,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Description:',
                style: MentalHealthTextStyles.text.mainCommonF16,
              ),
            ),
            const SizedBox(height: 4),
            const BreathingGuide(),
            const SizedBox(height: 45),
            const BreathingTimerWidget(),
          ],
        ),
      ),
    );
  }
}
