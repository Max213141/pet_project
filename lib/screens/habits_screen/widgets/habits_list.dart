import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class HabitsList extends StatelessWidget {
  final List<UserHabit> sortedList;
  final List<UserHabit> habitsList;
  final String uid;

  const HabitsList({
    super.key,
    required this.sortedList,
    required this.habitsList,
    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 35,
          maxHeight:
              (habitsList.length * 45) > MediaQuery.of(context).size.height / 3
                  ? MediaQuery.of(context).size.height / 3
                  : (habitsList.length * 45),
        ),
        child: ScrollConfiguration(
          behavior: CustomBehavior(),
          child: ListView.builder(
            itemCount: habitsList.length,
            itemBuilder: (context, index) {
              // Check if the current item's date is different from the previous item's date
              // if ((index > 0 &&
              //         sortedList[index].date.toDate().day !=
              //             sortedList[index - 1].date.toDate().day) &&
              //     sortedList[index].date.toDate().day !=
              //         DateTime.now().day) {
              //   return Column(
              //     children: [
              //       const Divider(),
              //       Text(
              //         ' ${DateFormat.MMMd().format(sortedList[index].date.toDate())}',
              //         style: MentalHealthTextStyles
              //             .text.signikaSecondaryFontF16,
              //       ),
              //       HabitsItem(
              //         uid: uid,
              //         habitsList: sortedList,
              //         habit: sortedList[index],
              //       ),
              //     ],
              //   );
              // } else
              if (index > 0 &&
                  sortedList[index].date.toDate().day !=
                      sortedList[index - 1].date.toDate().day) {
                return Column(
                  children: [
                    const Divider(),
                    Text(
                      ' ${DateFormat.MMMd().format(sortedList[index].date.toDate())}',
                      style:
                          MentalHealthTextStyles.text.signikaSecondaryFontF16,
                    ),
                    HabitsItem(
                      uid: uid,
                      habitsList: sortedList,
                      habit: sortedList[index],
                    ),
                  ],
                );
              } else {
                return HabitsItem(
                  uid: uid,
                  habitsList: sortedList,
                  habit: habitsList[index],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
