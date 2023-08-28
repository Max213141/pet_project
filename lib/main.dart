import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pet_project/entities/hive_entities/app_preferences.dart';
import 'package:pet_project/screens/details_screen.dart';
import 'package:pet_project/blocs/blocs.dart';
import 'package:pet_project/screens/breathing_screen/breathing_screen.dart';
import 'package:pet_project/entities/hive_store.dart';
import 'package:pet_project/screens/error_screen/error_screen.dart';
import 'package:pet_project/screens/initial_hive_page.dart';
import 'package:pet_project/screens/initial_page.dart';
import 'package:pet_project/screens/main_screen/main_screen.dart';
import 'package:pet_project/screens/splash_screen/splash_screen.dart';
import 'package:pet_project/utils/loger.dart';
import 'package:pet_project/utils/theme_data.dart';

import 'firebase_options.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //_log('Initialized default app $app');

  FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  //_log('Initialized auth $auth');

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(MyApp(
    auth: auth,
  ));
}

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print('_firebaseMessagingBackgroundHandler');

//   Future onDidReceiveLocalNotification(
//     int? id,
//     String? title,
//     String? body,
//     String? payload,
//   ) async {
//     print('onDidReceiveLocalNotification');
//   }

//   const channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     // 'This channel is used for important notifications.', // description
//     importance: Importance.high,
//   );

//   var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   const initializationSettingsAndroid =
//       AndroidInitializationSettings('icon_app');
//   final initializationSettingsIOS = DarwinInitializationSettings(
//       onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//   // final initializationSettingsMacOS = MacOSInitializationSettings();

//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);
//   final initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//     iOS: initializationSettingsIOS,
//   );
//   await flutterLocalNotificationsPlugin.initialize(
//     initializationSettings,
//     // onSelectNotification: onSelectNotification,
//   );

//   ///Not able to stop default notification
//   ///there fore when custom notification is called
//   ///result is 2 notifications displayed.
//   NotificationDetails _notificationDetails;
//   _notificationDetails = await customNotification(message: message);
//   flutterLocalNotificationsPlugin.show(
//     message.notification.hashCode,
//     message.notification!.title,
//     message.notification!.body,
//     _notificationDetails,
//     payload: '',
//   );

//   // await Firebase.initializeApp();
//   print('Handling a background message ${message.messageId}');
// }

// Future<NotificationDetails> customNotification(
//     {required RemoteMessage message}) async {
//   // print('notificationDetailsBigImage');
//   // final utils = Utils();

//   // final bigPicturePath = await utils.downloadAndSaveFile(
//   //     url: 'https://picsum.photos/536/354', fileName: 'bigPicture');
//   // final bigPictureStyleInformation = BigPictureStyleInformation(
//   //   FilePathAndroidBitmap(bigPicturePath),
//   //   hideExpandedLargeIcon: true,
//   // );
//   const androidPlatformChannelSpecifics = AndroidNotificationDetails(
//     'big text channel name',
//     'big text channel name',
//     // styleInformation: bigPictureStyleInformation,
//     icon: 'icon_app',
//     color: const Color.fromARGB(255, 255, 0, 0),
//     ledColor: const Color.fromARGB(255, 255, 0, 0),
//     ledOnMs: 1000,
//     ledOffMs: 500,
//   );
//   return NotificationDetails(android: androidPlatformChannelSpecifics);
// }

class MyApp extends StatelessWidget {
  final FirebaseAuth auth;
  final HiveStore hiveStore = HiveStore();
  bool isFirstLaunch = true;

  Future<void> _initHive() async {
    WidgetsFlutterBinding.ensureInitialized();
    await hiveStore.init();
    final appPreferencesBox =
        await Hive.openBox<AppPreferences>('app_preferences');
    //_log('app preferences box: $appPreferencesBox');
    //_log('app preferences box is empty: ${appPreferencesBox.isEmpty}');

    if (appPreferencesBox.isEmpty) {
      await HiveStore().setInitialPreferences();
      // final appPreferencesBox = hiveStore.getAppPreferencesBox();

      //_log(
      // 'app preferences box is empty after setting to initial: ${appPreferencesBox.isEmpty}');
    } else {
      final appPreferences = appPreferencesBox.getAt(0);
      if (appPreferences != null) {
        // App has been launched before
        appPreferences.isFirstLaunch = false;
        await appPreferences.save();
      }
    }
  }

  MyApp({Key? key, required this.auth}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        // GoRoute(
        //   path: '/',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return IntroScreen();
        //   },
        // ),
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();

            return InitialHivePage(
              auth: auth,
            );
          },
        ),

        GoRoute(
          path: '/initial_page',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();

            return InitialPage(
              auth: auth,
            );
          },
        ),
        GoRoute(
          path: '/main',
          builder: (BuildContext context, GoRouterState state) {
            return const MainScreen();
          },
          routes: [
            GoRoute(
              path: 'details',
              builder: (BuildContext context, GoRouterState state) {
                return const BreathingPracticeScreen(
                  title: 'Breathing Practice',
                );
              },
            ),
          ],
        ),
        // GoRoute(
        //   path: '/auth',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return AuthScreen(
        //       auth: auth,
        //     );
        //   },
        // ),
      ],
      errorBuilder: (context, state) => const ErrorScreen(),
      debugLogDiagnostics: true,
    );
// final    isDarkTheme = await HiveStore().getAppTheme() ?? false;

    return FutureBuilder(
      future: _initHive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
              BlocProvider<AuthBloc>(create: (context) => AuthBloc(auth: auth)),
            ],
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp.router(
                  title: 'Flutter Demo',
                  routerConfig: router,
                  theme: state.isDarkTheme ? darkTheme : lightTheme,
                  // home: const Home(),
                );
              },
            ),
          );
        } else {
          return MaterialApp();
        }
      },
    );
  }
}
