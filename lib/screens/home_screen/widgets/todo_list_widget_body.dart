import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

_log(dynamic message) =>
    Logger.projectLog(message, name: 'todo_list_widget_body');

class TodoListWidgetBody extends StatelessWidget {
  final String uid;
  final List<UserHabit> habitsList;

  const TodoListWidgetBody({
    super.key,
    required this.habitsList,
    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    List<UserHabit>? currentUserHabits = habitsList
        .where((element) => (element.date.toDate().day == DateTime.now().day &&
            element.date.toDate().month == DateTime.now().month))
        .take(3)
        .toList();

    // _log('is not empty ${currentUserHabits.isNotEmpty}');

    return ToDoWidgetFrame(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                l10n.homeScreenToDoListPhrase,
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
              ),
            ),
            Expanded(
              child: currentUserHabits.length < 3
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...currentUserHabits.map(
                          (habit) => HabitsItem(
                            uid: uid,
                            habitsList: habitsList.toList(),
                            habit: habit,
                          ),
                        ),
                        ActionButton(
                          title: l10n.homeScreenToDoListAdd,
                          onPressed: () {
                            showModalBottomSheet(
                              useSafeArea: true,
                              showDragHandle: true,
                              isScrollControlled: true,
                              backgroundColor: AppColor.primaryColorDark,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return RepaintBoundary(
                                  child: HabitCreationBody(
                                    uid: uid,
                                    habitsList: habitsList,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: currentUserHabits
                            .map(
                              (habit) => HabitsItem(
                                uid: uid,
                                habitsList: habitsList.toList(),
                                habit: habit,
                              ),
                            )
                            .toList(),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
