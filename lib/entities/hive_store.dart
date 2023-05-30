import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pet_project/entities/hive_entities/app_preferences.dart';
import 'package:pet_project/utils/loger.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'hice_store');

class HiveStore {
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(directory.path);
    Hive.registerAdapter(AppPreferencesAdapter());
  }

  Future<void> setInitialPreferences() async {
    var box = await Hive.openBox<AppPreferences>('app_preferences');
    //_log('hive box: $box');
    var appPrefs = AppPreferences.initial();
    await box.add(appPrefs);
  }

  Box<AppPreferences> getAppPreferencesBox() {
    return Hive.box<AppPreferences>('app_preferences');
  }

  bool? getAppTheme() {
    Box<AppPreferences> appPrefsBox =
        Hive.box<AppPreferences>('app_preferences');
    AppPreferences? appPrefs = appPrefsBox.get(0);
    return appPrefs?.isDarkTheme;
  }

  bool? getFirstLaunch() {
    Box<AppPreferences> appPrefsBox =
        Hive.box<AppPreferences>('app_preferences');
    AppPreferences? appPrefs = appPrefsBox.get(0);
    return appPrefs?.isFirstLaunch;
  }
}
