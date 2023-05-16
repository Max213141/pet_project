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
  ThemeBloc() : super(ThemeState(isDarkTheme: true)) {
    on<ChangeTheme>(
      (event, emit) async {
        Box<AppPreferences> preferencesBox =
            await HiveStore().getAppPreferencesBox();
        AppPreferences? appPreferences = preferencesBox.get('isDarkTheme');
        _log('app preferences box: $preferencesBox');

        _log('app preference: $appPreferences');
        if (appPreferences?.isDarkTheme ?? false) {
          emit(state.copyWith(isDarkTheme: false));
          appPreferences!.isDarkTheme = false;
          await appPreferences.save();
        } else {
          emit(state.copyWith(isDarkTheme: true));
          appPreferences!.isDarkTheme = true;
          await appPreferences.save();
        }
      },
    );
  }
}
