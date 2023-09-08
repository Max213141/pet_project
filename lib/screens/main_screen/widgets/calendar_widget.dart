import 'package:flutter/material.dart';
import 'package:pet_project/utils/app_colors.dart';
import 'package:pet_project/utils/decorations.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: MentalHealthDecorations.borders.radiusLeftC40,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                )),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
