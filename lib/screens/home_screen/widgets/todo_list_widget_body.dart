import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
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
                'Check out your habits',
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
                          title: 'Add habit',
                          onPressed: () {
                            showModalBottomSheet(
                              useSafeArea: true,
                              showDragHandle: true,
                              // isScrollControlled: true,
                              backgroundColor: AppColor.primaryColorDark,
                              anchorPoint: const Offset(0.5, 0.0),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return HabitCreationBody(
                                  uid: uid,
                                  habitsList: habitsList,
                                );
                              },
                            );
                            // final updatedList = habitsList.toList();
                            // updatedList.add(
                            //   UserHabit(
                            //     task: 'Finish todod List',
                            //     date: Timestamp.now(),
                            //     isDone: false,
                            //   ),
                            // );
                            // BlocProvider.of<HabitsBloc>(context).add(
                            //   UploadHabits(
                            //     userUID: uid,
                            //     userUpdatedHabits: UserHabitsList(
                            //       userHabits: updatedList.toList(),
                            //     ),
                            //   ),
                            // );
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
