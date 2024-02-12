import 'package:life_sync/entities/db_entities/db_entities.dart';

class MoodTracker {
  final DailyMood dailyMood;

  MoodTracker({
    required this.dailyMood,
  });

  factory MoodTracker.fromFirestore(Map<String, dynamic> data) {
    // final data = snapshot.data();
    return MoodTracker(
      dailyMood: DailyMood.fromFirestore(data['dailyMood']),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'dailyMood': dailyMood,
    };
  }
}
