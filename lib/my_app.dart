import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/navigation/navigation_observer.dart';
import 'package:life_sync/screens/breath_screen/breathe_screen.dart';
import 'package:life_sync/screens/breathing_items_screen/breathing_items_screen.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/screens/breathing_screen/breathing_screen.dart';
import 'package:life_sync/entities/hive_store.dart';
import 'package:life_sync/screens/error_screen/error_screen.dart';
import 'package:life_sync/screens/initial_hive_page.dart';
import 'package:life_sync/screens/initial_page.dart';
import 'package:life_sync/screens/home_screen/main_screen.dart';
import 'package:life_sync/screens/intro_screen/intro_screen.dart';
import 'package:life_sync/screens/meditation_screen/meditation_screen.dart';
import 'package:life_sync/screens/mood_screen/mood_screen.dart';
import 'package:life_sync/screens/tests_screen/tests_screen.dart';
import 'package:life_sync/utils/theme_data.dart';

class MyApp extends StatelessWidget {
  final FirebaseAuth auth;
  final HiveStore hiveStore = HiveStore();

  Future<void> _initHive() async {
    WidgetsFlutterBinding.ensureInitialized();
    await hiveStore.init();
    final appPreferencesBox =
        await Hive.openBox<AppPreferences>('app_preferences');
    await Hive.openBox<UserData>('user_data');
    //_log('app preferences box: $appPreferencesBox');
    //_log('app preferences box is empty: ${appPreferencesBox.isEmpty}');

    if (appPreferencesBox.isEmpty) {
      await HiveStore().setInitialData();
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

  MyApp({super.key, required this.auth});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      observers: [MyNavigatorObserver()],
      routes: [
        // GoRoute(
        //   path: '/',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return IntroScreen();
        //   },
        // ),
        GoRoute(
          name: 'initial_settings',
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();

            return InitialHivePage(
              auth: auth,
            );
          },
        ),

        GoRoute(
          name: 'initial_page',
          path: '/initial_page',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();
            return InitialPage(
              auth: auth,
            );
          },
        ),
        GoRoute(
          name: 'main',
          path: '/main',
          builder: (BuildContext context, GoRouterState state) {
            return const MainScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              // name: 'breathing_item_screen',
              path: 'mood_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const MoodScreen();
              },
            ),
            GoRoute(
              name: 'intro_screen',
              path: 'intro_screen',
              builder: (BuildContext context, GoRouterState state) {
                // return SplashScreen();

                return const IntroScreen();
              },
            ),
            GoRoute(
              name: 'breathing',
              path: 'breathing',
              builder: (BuildContext context, GoRouterState state) {
                return const BreathingPracticeScreen(
                  title: 'Breathing Practice',
                );
              },
              routes: [
                GoRoute(
                  name: 'breathing_items',
                  path: 'breathing_items',
                  builder: (BuildContext context, GoRouterState state) {
                    return const BreathingItemsScreen(
                      title: 'Meta Meditation',
                    );
                  },
                  routes: [
                    GoRoute(
                      // name: 'breathing_item_screen',
                      path: 'breathe',
                      builder: (BuildContext context, GoRouterState state) {
                        return const AnimatedCircleImageAnimation();
                      },
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              name: 'tests',
              path: 'tests',
              builder: (BuildContext context, GoRouterState state) {
                return const TestsScreen(
                  title: 'Psychological tests',
                );
              },
            ),
            GoRoute(
              name: 'meditation',
              path: 'meditation',
              builder: (BuildContext context, GoRouterState state) {
                return const MeditationScreen(
                  title: 'Meditations',
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
    // TODO adapt Go_Router For BottomNavigation
    return FutureBuilder(
      future: _initHive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
              BlocProvider<AuthBloc>(create: (context) => AuthBloc(auth: auth)),
              BlocProvider<SharedStoriesBloc>(
                create: (context) => SharedStoriesBloc(),
              ),
              BlocProvider<MoodBloc>(
                create: (context) => MoodBloc(),
              ),
              BlocProvider<HabitsBloc>(
                create: (context) => HabitsBloc(),
              )
            ],
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp.router(
                  title: 'LifeSync',
                  routerConfig: router,
                  theme: state.isDarkTheme ? lightTheme : darkTheme,
                );
              },
            ),
          );
        } else {
          return const MaterialApp();
        }
      },
    );
  }
}
