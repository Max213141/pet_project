part of 'locale_bloc.dart';

class LocaleEvent {}

class ChangeLocale extends LocaleEvent {
  final String locale;
  ChangeLocale({required this.locale});
}
