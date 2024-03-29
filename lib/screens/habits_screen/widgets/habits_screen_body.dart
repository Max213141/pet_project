import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/screens/habits_screen/widgets/widgets.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
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
    final l10n = l10nOf(context);

    List<UserHabit> sortedList = habitsList.toList()
      ..sort((a, b) => b.date.toDate().compareTo(a.date.toDate()));

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
          HorizontalDateList(
            habitsList: sortedList,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                l10n.habitsScreenPhrase,
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16,
              ),
            ),
          ),
          HabitsPercentageWidget(
            habitsList: sortedList,
          ),
          habitsList.isEmpty
              ? const SizedBox.shrink()
              : HabitsList(
                  habitsList: habitsList,
                  sortedList: sortedList,
                  uid: uid,
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 6),
            child: ActionButton(
              title: l10n.habitsScreenAddHabit.toUpperCase(),
              onPressed: () {
                showModalBottomSheet(
                  useSafeArea: true,
                  showDragHandle: true,
                  isScrollControlled: true,
                  backgroundColor: AppColor.primaryColorDark,
                  anchorPoint: const Offset(0.5, 0.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return RepaintBoundary(
                      child: HabitCreationBody(
                        uid: uid,
                        habitsList: habitsList,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
