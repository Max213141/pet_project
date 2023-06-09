import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:pet_project/entities/hive_entities/app_preferences.dart';
import 'package:pet_project/entities/hive_store.dart';
import 'package:pet_project/utils/loger.dart';

part 'theme_event.dart';
part 'theme_state.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'theme_bloc');

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(isDarkTheme: HiveStore().getAppTheme() ?? false)) {
    on<ChangeTheme>(
      (event, emit) async {
        Box<AppPreferences> preferencesBox = HiveStore().getAppPreferencesBox();
        AppPreferences? appPreferences = preferencesBox.getAt(0);
        bool? darkThemeFlag = HiveStore().getAppTheme();
        _log('darkThemeFlag from storage: ${darkThemeFlag}');

        bool isDarkTheme = darkThemeFlag ?? false;

        _log('app preference is no empty: ${appPreferences}');

        if (appPreferences != null) {
          _log('triggerred theme change');

          appPreferences.isDarkTheme = event.isDarkTheme;
          await appPreferences.save();
          emit(state.copyWith(isDarkTheme: event.isDarkTheme));
        }
        //_log('app preference theme: $isDarkTheme');
      },
    );
  }
}
