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
    return Padding(
      padding: EdgeInsets.only(
        right: 45,
        left: 45,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'How are you today?',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            const SizedBox(height: 8),
            RepaintBoundary(
              child: CustomFormFieldWidget(
                controller: habitController,
                title: 'Your habit',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Add your habit first';
                  }
                  if (value.length > 30) {
                    return 'Text length cannot exceed 30 characters';
                  }
                  return null; // Return null if the validation passes
                },
                maxLength: 30,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 8),
            ActionButton(
              title: 'Submit'.toUpperCase(),
              onPressed: () {
                if (formKey.currentState!.validate()) {
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
                  Navigator.of(context).pop();
                }
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
