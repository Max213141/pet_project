part of 'locale_bloc.dart';

class LocaleEvent {}

class ChangeLocale extends LocaleEvent {
  final Locale locale;
  ChangeLocale({required this.locale});
}
