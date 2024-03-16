import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:life_sync/entities/hive_entities/app_preferences.dart';
import 'package:life_sync/entities/hive_entities/user_data.dart';
import 'package:life_sync/utils/loger.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'hice_store');

class HiveStore {
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    if (!Hive.isAdapterRegistered(0)) {
      await Hive.initFlutter(directory.path);
      Hive.registerAdapter(AppPreferencesAdapter());
      Hive.registerAdapter(UserDataAdapter());
    }
  }

  Future<void> setInitialData() async {
    var box = await Hive.openBox<AppPreferences>('app_preferences');
    var userDataBox = await Hive.openBox<UserData>('user_data');

    //_log('hive box: $box');
    final appPrefs = AppPreferences.initial();
    final userData = UserData.initial();
    await box.add(appPrefs);
    await userDataBox.add(userData);
  }

  Box<AppPreferences> getAppPreferencesBox() {
    return Hive.box<AppPreferences>('app_preferences');
  }

  UserData? getUserData() {
    Box<UserData> useDataBox = Hive.box<UserData>('user_data');
    return useDataBox.get(0);
  }

  bool? getAppTheme() {
    Box<AppPreferences> appPrefsBox =
        Hive.box<AppPreferences>('app_preferences');
    AppPreferences? appPrefs = appPrefsBox.get(0);
    _log('is Dark theme ${appPrefs?.isDarkTheme}');

    return appPrefs?.isDarkTheme;
  }

  bool? getFirstLaunch() {
    Box<AppPreferences> appPrefsBox =
        Hive.box<AppPreferences>('app_preferences');
    AppPreferences? appPrefs = appPrefsBox.get(0);
    return appPrefs?.isFirstLaunch;
  }

  Locale? getLocale() {
    Box<AppPreferences> appPrefsBox =
        Hive.box<AppPreferences>('app_preferences');
    AppPreferences? appPrefs = appPrefsBox.get(0);
    _log('appPrefs locale : ${appPrefs?.locale}');
    return appPrefs?.locale;
  }

  String? getUserName() {
    Box<UserData> useDataBox = Hive.box<UserData>('user_data');
    UserData? userData = useDataBox.get(0);
    return userData?.userName;
  }

  String? getUserEmail() {
    Box<UserData> useDataBox = Hive.box<UserData>('user_data');
    UserData? userData = useDataBox.get(0);
    return userData?.email;
  }
}
