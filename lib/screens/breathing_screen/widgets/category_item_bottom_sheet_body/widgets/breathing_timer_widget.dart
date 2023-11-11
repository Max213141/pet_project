import 'package:flutter/material.dart';
import 'package:life_sync/screens/breathing_screen/widgets/category_item_bottom_sheet_body/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      child: const BreathingTimerSwitcher(),
                    ),
                    const BreathingTimer(),
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
