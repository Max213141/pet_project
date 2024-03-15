import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/navigation/navigation_observer.dart';
import 'package:life_sync/screens/screens.dart';
import 'package:life_sync/utils/localization/l10n.dart';
import 'package:life_sync/utils/utils.dart';

class MyApp extends StatelessWidget {
  final FirebaseAuth auth;
  final HiveStore hiveStore = HiveStore();

  MyApp({
    super.key,
    required this.auth,
  });

  Future<void> _initHive() async {
    WidgetsFlutterBinding.ensureInitialized();
    await hiveStore.init();
    final appPreferencesBox =
        await Hive.openBox<AppPreferences>('app_preferences');
    await Hive.openBox<UserData>('user_data');
    if (appPreferencesBox.isEmpty) {
      await HiveStore().setInitialData();
    } else {
      final appPreferences = appPreferencesBox.getAt(0);
      if (appPreferences != null) {
        // App has been launched before
        appPreferences.isFirstLaunch = false;
        await appPreferences.save();
      }
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Locale? locale;
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
              name: 'profile_screen',
              path: 'profile_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfileScreen();
              },
            ),
            GoRoute(
              name: 'about_us_screen',
              path: 'about_us_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const AboutUsScreen();
              },
            ),
            GoRoute(
              name: 'support_screen',
              path: 'support_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const SupportScreen();
              },
            ),
            GoRoute(
              name: 'settings_screen',
              path: 'settings_screen',
              builder: (BuildContext context, GoRouterState state) {
                return const SettingsScreen();
              },
            ),

            // GoRoute(
            //   // name: 'breathing_item_screen',
            //   path: 'mood_screen',
            //   builder: (BuildContext context, GoRouterState state) {
            //     return const MoodScreen();
            //   },
            // ),
            // GoRoute(
            //   name: 'intro_screen',
            //   path: 'intro_screen',
            //   builder: (BuildContext context, GoRouterState state) {
            //     // return SplashScreen();

            //     return const IntroScreen();
            //   },
            // ),
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
                        return const SizedBox.shrink();
                        //  const AnimatedCircleImageAnimation();
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
          locale = HiveStore().getLocale();

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
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('en'),
                    Locale('ru'),
                    Locale('be'),
                  ],
                  locale: locale,
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
