import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarBodyWidget extends StatefulWidget {
  const CalendarBodyWidget({super.key});

  @override
  State<CalendarBodyWidget> createState() => _CalendarBodyWidgetState();
}

class _CalendarBodyWidgetState extends State<CalendarBodyWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return CalendarFrameWidget(
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        calendarFormat: _calendarFormat,
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        onDaySelected: (selectedDay, focusedDay) {
          showModalBottomSheet(
            useSafeArea: true,
            showDragHandle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            context: context,
            builder: (context) {
              return const MoodPickerWidget();
            },
          );
        },
      ),
    );
  }
}
