part of 'locale_bloc.dart';

class LocaleState {
  // const factory LocaleState.initial() = _Initial;

  String locale = 'ru';

  LocaleState({required this.locale});

  LocaleState copyWith({String? locale}) {
    return LocaleState(locale: locale ?? 'ru');
  }

  // Future<Locale> getTheme() async {
  //   return HiveStore().getLocale() ?? const Locale('en');
  // }
}
