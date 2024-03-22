import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';

class MoodTracker {
  final List<MoodEntry> dailyMood;

  MoodTracker({
    required this.dailyMood,
  });

  factory MoodTracker.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();

    final moodEntries = ((data?['dailyMood'] ?? []) as List<dynamic>)
        .map((entry) => MoodEntry.fromFirestore(entry))
        .toList();
    // final data = snapshot.data();
    return MoodTracker(
      dailyMood: moodEntries,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'dailyMood':
          dailyMood.map((moodEntry) => moodEntry.toFirestore()).toList(),
    };
  }
}
