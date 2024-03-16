part of 'locale_bloc.dart';

@freezed
class LocaleEvent {}

class ChangeLocale extends LocaleEvent {
  final Locale locale;
  ChangeLocale({required this.locale});
}
