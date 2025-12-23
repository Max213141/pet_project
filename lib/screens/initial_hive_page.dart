import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/auth_screen/auth_screen.dart';
import 'package:life_sync/screens/intro_screen/intro_screen.dart';
import 'package:life_sync/screens/home_screen/main_screen.dart';
import 'package:life_sync/screens/splash_screen/splash_screen.dart';
// import 'package:life_sync/utils/loger.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'initial_hive_page');

class InitialHivePage extends StatefulWidget {
  final FirebaseAuth auth;
  const InitialHivePage({
    super.key,
    required this.auth,
  });

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
    final isFirstLaunchFromHive = HiveStore().getFirstLaunch();

    // _log('is app fisrst launch: $isFirstLaunchFromHive');
    // //_log('app preferences box is empty: ${appPreferencesBox.isEmpty}');

    if (isFirstLaunchFromHive ?? true) {
      // _log('hive data about first launch: $isFirstLaunchFromHive');

      setState(() {
        isFirstLaunch = isFirstLaunchFromHive ?? true;
      });
    } else {
      setState(() {
        isFirstLaunch = false;
      });
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
        //_log('is ifrst launch before snapshot done- $isFirstLaunch');
        if (snapshot.connectionState == ConnectionState.done) {
          //_log('is ifrst launch after snapshot done - $isFirstLaunch');
          if (isFirstLaunch) {
            return const IntroScreen();
          } else {
            if (widget.auth.currentUser != null) {
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
