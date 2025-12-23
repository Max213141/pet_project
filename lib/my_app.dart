import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/my_app_locale_wrapper.dart';

import 'utils/router/app_router.dart';

class MyApp extends StatelessWidget {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;
  final HiveStore hiveStore = HiveStore();

  MyApp({
    super.key,
    required this.auth,
    required this.googleSignIn,
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
    final router = createRouter(auth: auth);

    // TODO adapt Go_Router For BottomNavigation
    return FutureBuilder(
      future: _initHive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // locale = HiveStore().getLocale();

          return MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
              BlocProvider<LocaleBloc>(create: (context) => LocaleBloc()),
              BlocProvider<AuthBloc>(
                  create: (context) =>
                      AuthBloc(auth: auth, googleSignIn: googleSignIn)),
              BlocProvider<SharedStoriesBloc>(
                create: (context) => SharedStoriesBloc(),
              ),
              BlocProvider<MoodBloc>(
                create: (context) => MoodBloc(),
              ),
              BlocProvider<HabitsBloc>(
                create: (context) => HabitsBloc(),
              ),
              BlocProvider<QuoteBloc>(
                create: (context) => QuoteBloc(),
              )
            ],
            child: BlocBuilder<LocaleBloc, LocaleState>(
              builder: (context, state) {
                return MyAppThemeWrapper(
                  locale: Locale(state.locale),
                  router: router,
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
