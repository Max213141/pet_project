import 'package:cloud_firestore/cloud_firestore.dart';

class UserHabit {
  final String task;
  final Timestamp date;
  final bool isDone;

  UserHabit({
    required this.task,
    required this.date,
    required this.isDone,
  });

  factory UserHabit.fromFirestore(
    Map<String, dynamic> data,
  ) {
    // final data = snapshot.data();
    return UserHabit(
      task: data['task'],
      date: data['date'],
      isDone: data['isDone'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'task': task,
      'date': date,
      'isDone': isDone,
    };
  }

  UserHabit copyWith({
    String? task,
    Timestamp? date,
    bool? isDone,
  }) {
    return UserHabit(
      task: task ?? this.task,
      date: date ?? this.date,
      isDone: isDone ?? this.isDone,
    );
  }
}
