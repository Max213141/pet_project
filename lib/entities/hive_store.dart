import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'package:pet_project/entities/hive_entities/app_preferences.dart';
import 'package:pet_project/utils/loger.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'theme_bloc');

class HiveStore {
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    Hive.registerAdapter(AppPreferencesAdapter());

    var appPrefs = AppPreferences(isDarkTheme: true, isFirstLaunch: true);
  }

  Future<void> setInitialPreferences() async {
    var box = Hive.openBox<AppPreferences>('app_preferences');
    _log('hive box: $box');
    var appPrefs = AppPreferences(isDarkTheme: true, isFirstLaunch: true);
  }

  Future<Box<AppPreferences>> getAppPreferencesBox() async {
    return await Hive.openBox<AppPreferences>('app_preferences');
  }
}
