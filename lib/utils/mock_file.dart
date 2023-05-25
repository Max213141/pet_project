import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/blocs/theme_bloc/theme_bloc.dart';
import 'package:pet_project/entities/hive_store.dart';
import 'package:pet_project/firebase_options.dart';
import 'package:pet_project/screens/error_screen/error_screen.dart';
import 'package:pet_project/screens/initial_hive_page.dart';
import 'package:pet_project/utils/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  runApp(MyApp(
    auth: auth,
  ));
}

class MyApp extends StatelessWidget {
  final FirebaseAuth auth;

  final HiveStore hiveStore = HiveStore();

  MyApp({Key? key, required this.auth}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            // return SplashScreen();

            return InitialHivePage(
              auth: auth,
            );
          },
        ),
      ],
      errorBuilder: (context, state) => const ErrorScreen(),
      debugLogDiagnostics: true,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
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
  }
}
