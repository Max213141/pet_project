import 'package:hive_flutter/hive_flutter.dart';
import 'package:life_sync/entities/hive_index.dart';

part 'user_data.g.dart';

@HiveType(typeId: HiveIndex.userData)
class UserData extends HiveObject {
  @HiveField(0)
  String? userName;
  @HiveField(1)
  String? uid;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? password;

  UserData({
    this.userName,
    this.uid,
    this.email,
    this.password,
  });

  UserData.initial() : userName = 'AppUser';
}
