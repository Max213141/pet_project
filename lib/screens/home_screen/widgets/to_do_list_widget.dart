// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:life_sync/entities/db_entities/db_entities.dart';
// import 'package:life_sync/screens/habits_screen/widgets/habits_item.dart';
import 'package:life_sync/utils/utils.dart';

class ToDoListWidget extends StatefulWidget {
  const ToDoListWidget({super.key});

  @override
  State<ToDoListWidget> createState() => _ToDoListWidgetState();
}

class _ToDoListWidgetState extends State<ToDoListWidget> {
  @override
  Widget build(BuildContext context) {
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
                        child: Text(
                          'Soon something great will be there',
                          style: MentalHealthTextStyles
                              .text.signikaSecondaryFontF16,
                        ),
                        //   child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // children: [
                        // HabitsItem(
                        //   habit: UserHabit(
                        //     task: 'Finish todod List',
                        //     date: Timestamp.now(),
                        //     isDone: true,
                        //   ),
                        // ),
                        // HabitsItem(
                        //   habit: UserHabit(
                        //     task: 'Finish todod List',
                        //     date: Timestamp.now(),
                        //     isDone: true,
                        //   ),
                        // ),
                        // HabitsItem(
                        //   habit: UserHabit(
                        //     task: 'Finish todod List',
                        //     date: Timestamp.now(),
                        //     isDone: true,
                        //   ),
                        // ),
                        // ],
                        // )
                        // ListView.builder(
                        //   itemCount: 3,
                        //   itemBuilder: (context, index) => const HabbitsItem(),
                        //   physics: const NeverScrollableScrollPhysics(),
                        // ),
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
