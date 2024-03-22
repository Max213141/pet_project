import 'package:life_sync/entities/db_entities/db_entities.dart';

class DailyMood {
  final List<MoodEntry> moodEntries;

  DailyMood({
    required this.moodEntries,
  });

  factory DailyMood.fromFirestore(
    List<dynamic> data,
  ) {
    // final data = snapshot.data();
    // final List<dynamic> moodData = data['dailyMood'];
    final moodEntries =
        data.map((entry) => MoodEntry.fromFirestore(entry)).toList();
    return DailyMood(
      moodEntries: moodEntries,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'dailyMood':
          moodEntries.map((moodEntry) => moodEntry.toFirestore()).toList(),
    };
  }
}
