import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';

class CalendarLoadingWidget extends StatelessWidget {
  const CalendarLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalendarFrameWidget(
      child: Center(
        child: SizedBox(
          height: 75,
          width: 75,
          child: RepaintBoundary(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Loader(size: 25),
            ),
          ),
        ),
      ),
    );
  }
}
