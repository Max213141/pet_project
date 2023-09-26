import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/entities/hive_store.dart';
import 'package:pet_project/screens/auth_screen/auth_screen.dart';
import 'package:pet_project/screens/intro_screen/intro_screen.dart';
import 'package:pet_project/screens/home_screen/main_screen.dart';
import 'package:pet_project/screens/splash_screen/splash_screen.dart';
import 'package:pet_project/utils/loger.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'initial_hive_page');

class InitialHivePage extends StatefulWidget {
  final FirebaseAuth auth;
  const InitialHivePage({
    Key? key,
    required this.auth,
  }) : super(key: key);

  @override
  State<InitialHivePage> createState() => _InitialHivePageState();
}

class _InitialHivePageState extends State<InitialHivePage> {
  bool isFirstLaunch = true;
  late HiveStore hiveStore;

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized;

    super.initState();
  }

  Future<void> _firstLaunchHandler() async {
    // final appPreferencesBox = await Hive.box('app_preferences');
    final isFirstLaunchFromHive = HiveStore().getFirstLaunch();

    _log('is app fisrst launch: $isFirstLaunchFromHive');
    // //_log('app preferences box is empty: ${appPreferencesBox.isEmpty}');

    if (isFirstLaunchFromHive ?? true) {
      //_log('hive data about first launch: $isFirstLaunchFromHive');

      setState(() {
        isFirstLaunch = isFirstLaunchFromHive ?? true;
      });
    } else {
      // final appPreferences = appPreferencesBox.getAt(0);

      // if (appPreferences != null) {
      //   // App has been launched before
      //   appPreferences.isFirstLaunch = false;
      //   await appPreferences.save();
      // }
      setState(() {
        isFirstLaunch = false;
      });
      //_log('flag of first launch: $isFirstLaunch');
    }
  }

  @override
  Widget build(BuildContext context) {
    // bool val = true;
    // return IntroScreen(
    //   auth: widget.auth,
    // );
    return FutureBuilder(
      future: _firstLaunchHandler(),
      builder: (context, snapshot) {
        // //_log('is ifrst launch before snapshot done- $isFirstLaunch');
        if (snapshot.connectionState == ConnectionState.done) {
          // //_log('is ifrst launch after snapshot done - $isFirstLaunch');
          if (isFirstLaunch) {
            return const IntroScreen();
          } else {
            if (widget.auth.currentUser != null) {
              //TODO uncomment for uth porper flow
              return const MainScreen();
            } else {
              return const AuthScreen();
            }
          }
        }
        return const SplashScreen();
      },
    );
  }
}
