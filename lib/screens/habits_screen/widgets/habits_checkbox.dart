import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'habits_checkbox');

class HabitsCheckbox extends StatefulWidget {
  final UserHabit habit;
  final List<UserHabit> habitsList;
  final bool isChecked;
  final String uid;
  const HabitsCheckbox({
    super.key,
    required this.habitsList,
    required this.isChecked,
    required this.habit,
    required this.uid,
  });

  @override
  State<HabitsCheckbox> createState() => _HabitsCheckboxState();
}

class _HabitsCheckboxState extends State<HabitsCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    isChecked = widget.isChecked;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Transform.scale(
        scale: 1.4,
        child: SizedBox(
          height: 35,
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              // modifiebleHabitsList = widget.habitsList;
              setState(() {
                isChecked = value!;
              });
              final index = widget.habitsList.toList().indexOf(widget.habit);
              _log(index);
              widget.habitsList[index] = widget.habit.copyWith(
                isDone: value!,
              );
              BlocProvider.of<HabitsBloc>(context).add(
                UploadHabits(
                  userUID: widget.uid,
                  userUpdatedHabits:
                      UserHabitsList(userHabits: widget.habitsList),
                ),
              );
            },
            fillColor: MaterialStateProperty.all<Color>(
              AppColor.primaryBackgroundColor.withOpacity(.7),
            ),
            side: const BorderSide(
              color: AppColor.habbitsTileBackground,
            ),
            activeColor: AppColor.primaryBackgroundColor,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
          ),
        ),
      ),
    );
  }
}
