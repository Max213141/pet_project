import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'daily_complition_widget');

class HorizontalDateList extends StatelessWidget {
  final List<UserHabit> habitsList;
  const HorizontalDateList({
    super.key,
    required this.habitsList,
  });

  // Function to generate a list of dates starting from the current date
  List<DateTime> getDates() {
    DateTime now = DateTime.now();
    int year = now.year;
    int month = now.month;
    List<DateTime> daysInMonth = [];

    // DateTime firstDayOfMonth = DateTime(year, month, 1);
    DateTime lastDayOfMonth = DateTime(year, month + 1, 0);

    for (int i = 1; i <= lastDayOfMonth.day; i++) {
      daysInMonth.add(DateTime(year, month, i));
    }

    return daysInMonth;
  }

  Map<int, double> getPercentage() {
    Map<int, int> totalHabitsPerDay = {};
    Map<int, int> completedHabitsPerDay = {};
    Map<int, double> completionPercentagePerDay = {};
// Iterate through habitsList to calculate total and completed habits for each day
    for (var habit in habitsList) {
      int habitDate =
          habit.date.toDate().day; // Assuming habit.date is a DateTime object
      final totalInSpecificDate = habitsList
          .where((element) => element.date.toDate().day == habitDate)
          .length;
      final completedInSpecificDate = habitsList
          .where((element) =>
              element.date.toDate().day == habitDate && element.isDone)
          .length;

      completedHabitsPerDay[habitDate] = completedInSpecificDate;
      totalHabitsPerDay[habitDate] = totalInSpecificDate;
    }

// Calculate completion percentage for each day
    totalHabitsPerDay.forEach((date, total) {
      int completed = completedHabitsPerDay[date] ?? 0;

      completionPercentagePerDay[date] = (completed / total) * 100;
    });
    return completionPercentagePerDay;
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = getDates();
    Map<int, double> completionPercentagePerDay = getPercentage();
    int itemCount = dates.length; // Number of dates to display

    return SizedBox(
      height: 106,
      width: MediaQuery.of(context).size.width - 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            String formattedMonth =
                DateFormat('MMM').format(dates[index]).toUpperCase();
            String formattedDate =
                DateFormat('dd').format(dates[index]).toUpperCase();

            double percentage =
                completionPercentagePerDay[dates[index].day] ?? 0.0;
            return SizedBox(
              height: 100,
              width: 55,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(
                        width: 47,
                        height: 90 * percentage / 100,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColor.primaryBackgroundColor,
                            borderRadius:
                                MentalHealthDecorations.borders.radiusC15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: SizedBox(
                      width: 55.0, // Adjust the width as needed
                      height: 100,
                      // margin: EdgeInsets.all(8.0),
                      // padding: EdgeInsets.all(16.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.habbitsTileBackground
                                  .withOpacity(.9),
                              width: 2,
                            ),
                            borderRadius:
                                MentalHealthDecorations.borders.radiusC15,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(
                                    formattedDate,
                                    style: MentalHealthTextStyles
                                        .text.signikaFontF24,
                                  ),
                                ),
                                Center(
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      formattedMonth,
                                      style: MentalHealthTextStyles
                                          .text.signikaFontF24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
