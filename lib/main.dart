import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/bloc/theme_bloc.dart';
import 'package:pet_project/details_screen.dart';
import 'package:pet_project/main_screen.dart';
import 'package:pet_project/utils/loger.dart';
import 'package:pet_project/utils/theme_data.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
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
    ],
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
