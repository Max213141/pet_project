import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

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
                      child: Center(
                        child:
                            //  Text(
                            //   'Soon something great will be there',
                            //   style: MentalHealthTextStyles
                            //       .text.signikaSecondaryFontF16,
                            // ),
                            //         Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   children: [],
                            // )
                            ListView.builder(
                          itemCount: currentUserHabits.length,
                          itemBuilder: (context, index) => HabitsItem(
                            uid: uid,
                            habitsList: habitsList,
                            habit: currentUserHabits[index],
                          ),
                          physics: const NeverScrollableScrollPhysics(),
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
