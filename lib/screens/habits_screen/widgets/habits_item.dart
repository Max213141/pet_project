import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'habits_item');

class HabitsItem extends StatefulWidget {
  final String uid;
  final UserHabit habit;
  final List<UserHabit> habitsList;
  const HabitsItem({
    super.key,
    required this.habit,
    required this.uid,
    required this.habitsList,
  });

  @override
  State<HabitsItem> createState() => _HabitsItemState();
}

class _HabitsItemState extends State<HabitsItem> {
  late bool isChecked;
  @override
  void initState() {
    super.initState();
    isChecked = widget.habit.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: MentalHealthDecorations.borders.radiusC10,
              border: Border.all(
                color: AppColor.habbitsTileBackground,
              ),
              color: AppColor.sharedStoryChipColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                widget.habit.task,
                maxLines: 1,
                style: MentalHealthTextStyles.text.popinsSecondaryFontF14,
              ),
            ),
          ),
        ),
        RepaintBoundary(
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
                  final index =
                      widget.habitsList.toList().indexOf(widget.habit);
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
                fillColor: WidgetStateProperty.all<Color>(
                  AppColor.primaryBackgroundColor.withValues(alpha: .7),
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
        ),
      ],
    );
  }
}
