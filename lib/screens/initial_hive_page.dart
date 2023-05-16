import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/entities/hive_entities/app_preferences.dart';
import 'package:pet_project/entities/hive_store.dart';
import 'package:pet_project/screens/initial_page.dart';
import 'package:pet_project/screens/intro_screen/intro_screen.dart';
import 'package:pet_project/screens/splash_screen/splash_screen.dart';
import 'package:pet_project/utils/loger.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'theme_bloc');

class InitialHivePage extends StatefulWidget {
  final FirebaseAuth auth;
  const InitialHivePage({Key? key, required this.auth}) : super(key: key);

  @override
  State<InitialHivePage> createState() => _InitialHivePageState();
}

class _InitialHivePageState extends State<InitialHivePage> {
  final HiveStore hiveStore = HiveStore();

  Future<void> _initHive() async {
    await hiveStore.init();
    final appPreferencesBox = await hiveStore.getAppPreferencesBox();
    _log('app preferences box: $appPreferencesBox');

    if (appPreferencesBox.isEmpty) {
      // First launch
      final appPreferences = AppPreferences(
        isFirstLaunch: true,
        isDarkTheme: true,
      );
      await appPreferencesBox.add(appPreferences);
    } else {
      final appPreferences = appPreferencesBox.getAt(0);
      if (appPreferences != null) {
        // App has been launched before
        appPreferences.isFirstLaunch = false;
        await appPreferences.save();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool val = true;

    return FutureBuilder(
      future: _initHive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return IntroScreen(
            auth: widget.auth,
          );
        }
        return const SplashScreen();
      },
    );
  }
}
