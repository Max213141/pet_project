part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ChangeTheme extends ThemeEvent {
  final bool isDarkTheme;
  ChangeTheme({required this.isDarkTheme});
}
