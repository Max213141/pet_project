import 'package:firebase_auth/firebase_auth.dart';
import 'package:pet_project/auth_screen.dart';
import 'package:pet_project/main_screen.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';
import 'package:pet_project/details_screen.dart';
import 'package:pet_project/initial_page.dart';
import 'package:pet_project/utils/loger.dart';
import 'package:pet_project/utils/theme_data.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  print('Initialized default app $app');
  print('Initialized auth $auth');

  runApp(MyApp(
    auth: auth,
  ));
}

class MyApp extends StatelessWidget {
  final FirebaseAuth auth;

  MyApp({Key? key, required this.auth}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return InitialPage(
              auth: auth,
            );
          },
        ),
        GoRoute(
          path: '/main',
          builder: (BuildContext context, GoRouterState state) {
            return MainScreen();
          },
          routes: [
            GoRoute(
              path: 'details',
              builder: (BuildContext context, GoRouterState state) {
                return const DetailsScreen();
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
    );
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          _log('is dark theme - ${state.isDarkTheme}');
          return MaterialApp.router(
            title: 'Flutter Demo',
            routerConfig: router,
            theme: state.isDarkTheme ? darkTheme : lightTheme,
            // home: const Home(),
          );
        },
      ),
    );
  }
}
