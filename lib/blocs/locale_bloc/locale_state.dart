part of 'locale_bloc.dart';

class LocaleState {
  // const factory LocaleState.initial() = _Initial;

  Locale locale = const Locale('en');

  LocaleState({required this.locale});

  LocaleState copyWith({Locale? locale}) {
    return LocaleState(locale: locale ?? const Locale('en'));
  }

  // Future<Locale> getTheme() async {
  //   return HiveStore().getLocale() ?? const Locale('en');
  // }
}
