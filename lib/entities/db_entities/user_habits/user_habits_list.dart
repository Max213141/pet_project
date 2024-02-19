import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';

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

    if (data?['dailyMood'] != null) {
      final habitEntries = (data?['dailyMood'] as List<dynamic>)
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
      'dailyMood':
          userHabits.map((userHabit) => userHabit.toFirestore()).toList(),
    };
  }
}
