import 'package:flutter/material.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class HabitsPercentageWidget extends StatelessWidget {
  final List<UserHabit> habitsList;
  const HabitsPercentageWidget({
    super.key,
    required this.habitsList,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    final int finishedHabits = habitsList
        .where((habit) =>
            habit.date.toDate().day == DateTime.now().day &&
            habit.date.toDate().month == DateTime.now().month &&
            habit.isDone == true)
        .length;
    final int unfinishedHabits = habitsList
        .where((habit) =>
            habit.date.toDate().day == DateTime.now().day &&
            habit.date.toDate().month == DateTime.now().month &&
            habit.isDone == false)
        .length;
    final int totalTodayHabits = finishedHabits + unfinishedHabits;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.habbitsTileBackground.withValues(alpha: .9),
            width: 2,
          ),
          borderRadius: MentalHealthDecorations.borders.radiusC15,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
          child: Column(
            children: [
              Center(
                child: Text(
                  totalTodayHabits != 0
                      ? finishedHabits == totalTodayHabits
                          ? l10n.habitsScreenFullCompletion
                          : l10n.habitsScreenPartCompletion
                      : l10n.habitsScreenPartEmptyHabits,
                  style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: FittedBox(
                      // Wrap RichText with FittedBox
                      fit: BoxFit.scaleDown,
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '$finishedHabits',
                              style: MentalHealthTextStyles
                                  .text.signikaSecondaryFontF42
                                  .copyWith(
                                color: AppColor.primaryBackgroundColor,
                              ),
                            ),
                            TextSpan(
                              text: '/',
                              style: MentalHealthTextStyles
                                  .text.signikaSecondaryFontF42,
                            ),
                            TextSpan(
                              text: '$totalTodayHabits',
                              style: MentalHealthTextStyles
                                  .text.signikaSecondaryFontF42,
                            ),
                            TextSpan(
                              text: l10n.habits,
                              style: MentalHealthTextStyles
                                  .text.signikaSecondaryFontF16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 60),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: HabitsPercentageRadialDiagram(
                      unfinishedHabits: unfinishedHabits,
                      finishedHabits: finishedHabits,
                      totalTodayHabits: totalTodayHabits,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
