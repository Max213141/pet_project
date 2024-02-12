import 'package:cloud_firestore/cloud_firestore.dart';

class MoodEntry {
  final String mood;
  final Timestamp trackedDay;

  MoodEntry({
    required this.mood,
    required this.trackedDay,
  });

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
}