import 'package:cloud_firestore/cloud_firestore.dart';

class MoodEntry {
  final String
      mood; //TODO change this to int emotionGrade to solve localized emotion trubles
  final Timestamp trackedDay;

  MoodEntry({
    required this.mood,
    required this.trackedDay,
  }) : super();

  factory MoodEntry.fromFirestore(
    Map<String, dynamic> data,
  ) {
    // final data = snapshot.data();
    return MoodEntry(
      mood: data['mood'],
      trackedDay: data['trackedDay'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'mood': mood,
      'trackedDay': trackedDay,
    };
  }

  // Default constructor with default values
  MoodEntry.defaultEntry()
      : mood = 'Neutral', // Default mood
        trackedDay = Timestamp.now();
}
