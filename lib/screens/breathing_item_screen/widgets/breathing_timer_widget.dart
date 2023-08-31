import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_project/screens/breathing_item_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

class BreathingTimerWidget extends StatefulWidget {
  const BreathingTimerWidget({super.key});
  @override
  State<BreathingTimerWidget> createState() => _BreathingTimerWidgetState();
}

class _BreathingTimerWidgetState extends State<BreathingTimerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width - 32,
      child: ClipRRect(
        borderRadius: MentalHealthDecorations.borders.radiusC20,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/backgrounds/card_backgound.svg',
                fit: BoxFit.cover,
                // alignment: Alignment.center,
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BreathingTimerSwitcher(),
                    BreathingTimer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
