import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'calendar_body_widget');

class CalendarBodyWidget extends StatefulWidget {
  final List<MoodEntry> moodEntries;
  const CalendarBodyWidget({
    super.key,
    required this.moodEntries,
  });

  @override
  State<CalendarBodyWidget> createState() => _CalendarBodyWidgetState();
}

class _CalendarBodyWidgetState extends State<CalendarBodyWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = BlocProvider.of<LocaleBloc>(context).state.locale;
    final calendarLocale = getCalendarLocale(locale);
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
        locale: calendarLocale,
        availableCalendarFormats: const {CalendarFormat.month: 'Month'},
        startingDayOfWeek: StartingDayOfWeek.monday,
        selectedDayPredicate: (day) => isSameDay(day, DateTime.now()),
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          defaultTextStyle: MentalHealthTextStyles.text.popinsSecondaryFontF12
              .copyWith(fontWeight: FontWeight.w400),
          weekendTextStyle: MentalHealthTextStyles.text.popinsSecondaryFontF12
              .copyWith(fontWeight: FontWeight.w400),
          selectedDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: MentalHealthDecorations.borders.calendarDayDefaultBorder,
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            color: AppColor.primaryBackgroundColor,
          ),
          defaultDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: MentalHealthDecorations.borders.calendarDayDefaultBorder,
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            color: AppColor.sharedStoryChipColor,
          ),
          // todayDecoration: BoxDecoration(
          //   shape: BoxShape.rectangle,
          //   border: MentalHealthDecorations.borders.calendarDayDefaultBorder,
          //   borderRadius: MentalHealthDecorations.borders.radiusC10,
          //   color: AppColor.primaryBackgroundColor,
          // ),
          weekendDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: MentalHealthDecorations.borders.calendarDayDefaultBorder,
            borderRadius: MentalHealthDecorations.borders.radiusC10,
            color: AppColor.primaryBackgroundColor,
          ),
        ),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, date, events) {
            // Customize the default day cell here
            return SizedBox(
              height: 40,
              width: 40,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border:
                      MentalHealthDecorations.borders.calendarDayDefaultBorder,
                  borderRadius: MentalHealthDecorations.borders.radiusC10,
                  color: getColorForDate(date, widget.moodEntries),
                ),
                child: Center(
                  child: Text(
                    '${date.day}',
                    style: MentalHealthTextStyles.text.popinsSecondaryFontF12
                        .copyWith(
                      fontWeight: FontWeight.w400,
                    ), // Customize the text color here
                  ),
                ),
              ),
            );
          },
          selectedBuilder: (context, date, events) {
            // Customize the selected day cell here
            return SizedBox(
              height: 40,
              width: 40,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border:
                      MentalHealthDecorations.borders.calendarDayDefaultBorder,
                  borderRadius: MentalHealthDecorations.borders.radiusC10,
                  color: getColorForDate(date, widget.moodEntries),
                ),
                child: Center(
                  child: Text(
                    '${date.day}',
                    style: MentalHealthTextStyles.text.popinsSecondaryFontF12
                        .copyWith(
                      fontWeight: FontWeight.w400,
                    ), // Customize the text color here
                  ),
                ),
              ),
            );
          },
        ),
        onDaySelected: (selectedDay, focusedDay) {
          // selectedDayPredicate = selectedDay;
          _log('SelectedDate - $selectedDay');
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
              return MoodPickerWidget(
                selectedDay: selectedDay,
                moodEntries: widget.moodEntries,
              );
            },
          );
        },
      ),
    );
  }
}

String getCalendarLocale(String locale) {
  _log('locale for calendar$locale');
  final String calendarLocale;
  switch (locale) {
    case 'ru':
      calendarLocale = 'ru_RU';
      break;
    case 'en':
    default:
      calendarLocale = 'en_EN';
      break;
  }
  return calendarLocale;
}

Color getColorForDate(DateTime date, List<MoodEntry> moodEntries) {
  for (var entry in moodEntries) {
    final convertedDate = entry.trackedDay.toDate();
    if (convertedDate.year == date.year &&
        convertedDate.month == date.month &&
        convertedDate.day == date.day) {
      switch (entry.mood) {
        case 'Angry':
          return AppColor.chartAngry;
        case 'Sad':
          return AppColor.chartSad;
        case 'Bored':
          return AppColor.chartBored;
        case 'Meh':
          return AppColor.chartMeh;
        case 'Good':
          return AppColor.chartGood;
        case 'Happy':
          return AppColor.chartHappy;
        default:
          return AppColor.primaryColor;
      } // Return the color from the MoodEntry
    }
  }
  return AppColor.primaryColor;
}
