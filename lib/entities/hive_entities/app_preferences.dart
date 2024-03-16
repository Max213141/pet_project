import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:life_sync/entities/hive_index.dart';

part 'app_preferences.g.dart';

@HiveType(typeId: HiveIndex.appPreferences)
class AppPreferences extends HiveObject {
  @HiveField(0)
  bool isFirstLaunch;

  @HiveField(1)
  bool isDarkTheme;
  // bool get isDarkThemeInApp => isDarkTheme;

  @HiveField(2)
  Locale locale;

  AppPreferences({
    required this.isFirstLaunch,
    required this.isDarkTheme,
    required this.locale,
  });

  AppPreferences.initial()
      : isFirstLaunch = true,
        isDarkTheme = false,
        locale = const Locale('ru');
}
