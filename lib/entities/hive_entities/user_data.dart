import 'package:hive_flutter/hive_flutter.dart';
import 'package:pet_project/entities/hive_index.dart';

part 'user_data.g.dart';

@HiveType(typeId: HiveIndex.userData)
class UserData extends HiveObject {
  @HiveField(0)
  String? userName;

  UserData({
    this.userName,
  });

  UserData.initial() : userName = 'AppUser';
}
