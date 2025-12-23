import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sync/utils/router/navigation_observer.dart';
import 'package:life_sync/screens/screens.dart';

GoRouter createRouter({required FirebaseAuth auth}) {
  return GoRouter(
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
    ],
    errorBuilder: (context, state) => const ErrorScreen(),
    debugLogDiagnostics: true,
  );
}
