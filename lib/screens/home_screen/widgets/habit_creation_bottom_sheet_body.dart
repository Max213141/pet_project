import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

class HabitCreationBody extends StatefulWidget {
  final String uid;
  final List<UserHabit> habitsList;

  const HabitCreationBody({
    super.key,
    required this.uid,
    required this.habitsList,
  });

  @override
  State<HabitCreationBody> createState() => _HabitCreationBodyState();
}

class _HabitCreationBodyState extends State<HabitCreationBody> {
  late GlobalKey<FormState> formKey;

  late List<MoodEntry> updatedMoodentries = [];
  late TextEditingController habitController;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    habitController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'How are you today?',
                style: MentalHealthTextStyles.text.signikaFontF24,
              ),
              Expanded(
                child: RepaintBoundary(
                  child: CustomFormFieldWidget(
                    controller: habitController,
                    title: 'Your habit',
                    validator: (value) {
                      if (value!.length > 30) {
                        return 'Text length cannot exceed 30 characters';
                      }
                      return null; // Return null if the validation passes
                    },
                    maxLength: 30,
                    maxLines: 3,
                  ),
                ),
              ),
              ActionButton(
                title: 'Submit'.toUpperCase(),
                onPressed: () {
                  final updatedList = widget.habitsList.toList();
                  updatedList.add(
                    UserHabit(
                      task: habitController.text,
                      date: Timestamp.now(),
                      isDone: false,
                    ),
                  );
                  BlocProvider.of<HabitsBloc>(context).add(
                    UploadHabits(
                      userUID: widget.uid,
                      userUpdatedHabits: UserHabitsList(
                        userHabits: updatedList.toList(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
