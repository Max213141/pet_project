import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class HabitsScreenBody extends StatelessWidget {
  final List<UserHabit> habitsList;
  final String uid;
  const HabitsScreenBody({
    super.key,
    required this.habitsList,
    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomBehavior(),
      child: ListView(
        children: [
          SizedBox(
            height: 25,
            width: MediaQuery.of(context).size.width,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          const HorizontalDateList(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Daily check-in',
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
              ),
            ),
          ),
          const HabitsPercentageWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3.5,
              child: ScrollConfiguration(
                behavior: CustomBehavior(),
                child: ListView.builder(
                  itemCount: habitsList.length,
                  itemBuilder: (context, index) => HabitsItem(
                    habit: habitsList[index],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: ActionButton(
              title: 'Add new habit'.toUpperCase(),
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
                    userUpdatedHabits: UserHabitsList(userHabits: updatedList),
                  ),
                );
                // showModalBottomSheet(
                //   useSafeArea: true,
                //   showDragHandle: true,
                //   shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(40),
                //       topRight: Radius.circular(40),
                //     ),
                //   ),
                //   context: context,
                //   builder: (context) {
                //     return Center(
                //       child: Text(
                //         ';)',
                //         style:
                //             MentalHealthTextStyles.text.signikaPrimaryFontF28,
                //       ),
                //     );
                //   },
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
