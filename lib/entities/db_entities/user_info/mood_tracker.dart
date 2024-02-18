import 'package:life_sync/entities/db_entities/db_entities.dart';

class MoodTracker {
  final List<MoodEntry> dailyMood;

  MoodTracker({
    required this.dailyMood,
  });

  factory MoodTracker.fromFirestore(Map<String, dynamic> data) {
    final moodEntries = (data['dailyMood'] as List<dynamic>)
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
