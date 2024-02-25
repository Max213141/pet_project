import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
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

    _log('is not empty ${currentUserHabits.isNotEmpty}');

    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: AppColor.primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: MentalHealthDecorations.borders.radiusBTRightC40,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Check out your habits',
                        style:
                            MentalHealthTextStyles.text.signikaSecondaryFontF16,
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
                                    habitsList: habitsList,
                                    habit: habit,
                                  ),
                                ),
                                ActionButton(
                                  title: 'Add habit',
                                  onPressed: () {
                                    final updatedList = habitsList.toList();
                                    updatedList.add(
                                      UserHabit(
                                        task: 'Finish todod List',
                                        date: Timestamp.now(),
                                        isDone: false,
                                      ),
                                    );
                                    BlocProvider.of<HabitsBloc>(context).add(
                                      UploadHabits(
                                        userUID: uid,
                                        userUpdatedHabits: UserHabitsList(
                                          userHabits: updatedList,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: currentUserHabits
                                    .map(
                                      (habit) => HabitsItem(
                                        uid: uid,
                                        habitsList: habitsList,
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
            ),
          ),
        ),
      ),
    );
  }
}
