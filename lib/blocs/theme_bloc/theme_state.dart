part of 'theme_bloc.dart';

class ThemeState {
  bool isDarkTheme = false;

  ThemeState({required this.isDarkTheme});

  ThemeState copyWith({bool? isDarkTheme}) {
    return ThemeState(isDarkTheme: isDarkTheme ?? this.isDarkTheme);
  }

  Future<dynamic> getTheme() async {
    return await HiveStore().getAppTheme() ?? false;
  }
}
