import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

class HabitsItem extends StatefulWidget {
  final UserHabit habit;
  const HabitsItem({
    super.key,
    required this.habit,
  });

  @override
  State<HabitsItem> createState() => _HabitsItemState();
}

class _HabitsItemState extends State<HabitsItem> {
  late bool isChecked;
  @override
  void initState() {
    isChecked = widget.habit.isDone;
    // TODO: implement initState
    super.initState();
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
                  setState(() {
                    isChecked = value!;
                  });
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
        ),
      ],
    );
  }
}
