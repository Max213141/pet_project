import 'package:hive_flutter/hive_flutter.dart';
import 'package:pet_project/entities/hive_index.dart';

part 'app_preferences.g.dart';

@HiveType(typeId: HiveIndex.appPreferences)
class AppPreferences extends HiveObject {
  @HiveField(0)
  bool isFirstLaunch;

  @HiveField(1)
  bool isDarkTheme;
  // bool get isDarkThemeInApp => isDarkTheme;

  AppPreferences({
    required this.isFirstLaunch,
    required this.isDarkTheme,
  });

  AppPreferences.initial()
      : isFirstLaunch = true,
        isDarkTheme = true;
}
