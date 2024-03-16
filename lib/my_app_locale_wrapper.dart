import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:life_sync/blocs/blocs.dart';

import 'utils/utils.dart';

class MyAppThemeWrapper extends StatelessWidget {
  final Locale locale;
  final RouterConfig<Object>? router;
  const MyAppThemeWrapper({
    super.key,
    required this.locale,
    this.router,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
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
          theme: state.isDarkTheme ? darkTheme : lightTheme,
        );
      },
    );
  }
}
