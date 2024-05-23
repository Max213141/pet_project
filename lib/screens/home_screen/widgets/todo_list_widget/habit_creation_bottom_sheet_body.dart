import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'habit_creation_bottom_sheet_body');

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
    final l10n = l10nOf(context);

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
              l10n.howAreYou,
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            const SizedBox(height: 8),
            RepaintBoundary(
              child: CustomFormFieldWidget(
                controller: habitController,
                title: l10n.homeScreenHabitCreationHabit,
                validator: (value) {
                  if (value!.isEmpty) {
                    return l10n.homeScreenHabitCreationIsEmpty;
                  }
                  if (value.length > 30) {
                    return l10n.homeScreenHabitCreationLenghtError;
                  }
                  return null; // Return null if the validation passes
                },
                maxLength: 30,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 8),
            ActionButton(
              title: l10n.submit.toUpperCase(),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // _log('OLD list -  ${widget.habitsList.last.task}');
                  final updatedList = widget.habitsList.toList();
                  updatedList.insert(
                    0,
                    UserHabit(
                      task: habitController.text,
                      date: Timestamp.now(),
                      isDone: false,
                    ),
                  );
                  // _log('NEW list -  ${updatedList.last.task}');habts

                  BlocProvider.of<HabitsBloc>(context).add(
                    UploadHabits(
                      userUID: widget.uid,
                      userUpdatedHabits: UserHabitsList(
                        userHabits: updatedList.toList(),
                      ),
                    ),
                  );
                  Future.delayed(
                    //TODO check does it work out to solve problem with strange
                    const Duration(milliseconds: 700),
                    () => Navigator.of(context).pop(),
                  );
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
