import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:life_sync/entities/db_entities/db_entities.dart';

class UserInfo {
  final MoodTracker? moodTracker;
  final DBUserData userData;

  UserInfo({
    this.moodTracker,
    required this.userData,
  });

  factory UserInfo.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    if (data?['moodTracker'] != null) {
      return UserInfo(
          moodTracker: MoodTracker.fromFirestore(data?['moodTracker']),
          userData: DBUserData.fromFirestore(data?['userData']));
    } else {
      return UserInfo(userData: DBUserData.fromFirestore(data?['userData']));
    }
  }

  Map<String, dynamic> toFirestore() {
    return {
      'moodTracker': moodTracker?.toFirestore(),
      'userData': userData.toFirestore(),
    };
  }
}
