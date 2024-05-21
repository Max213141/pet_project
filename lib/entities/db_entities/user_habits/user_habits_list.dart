import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'user_habits_list');

class UserHabitsList {
  final List<UserHabit> userHabits;

  UserHabitsList({
    required this.userHabits,
  });

  factory UserHabitsList.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
    // Map<String, dynamic> data,
  ) {
    final data = snapshot.data();

    if (data?['userHabits'] != null) {
      _log('Daily mood data -${data!['userHabits']}');
      final habitEntries = (data['userHabits'] as List<dynamic>)
          .map((habit) => UserHabit.fromFirestore(habit))
          .toList();
      return UserHabitsList(
        userHabits: habitEntries,
      );
    } else {
      {
        return UserHabitsList(userHabits: []);
      }
    }
  }

  Map<String, dynamic> toFirestore() {
    return {
      'userHabits':
          userHabits.map((userHabit) => userHabit.toFirestore()).toList(),
    };
  }
}
