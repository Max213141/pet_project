import 'package:flutter/material.dart';
import 'package:life_sync/utils/localization/l10n_shortcut.dart';

abstract class StringMatchers {
  // static String dayOfWeek(BuildContext context, DateTime date) {
  //   final l10n = l10nOf(context);
  //   switch (date.currentDate.weekday) {
  //     case 1:
  //       return l10n.monday;
  //     case 2:
  //       return l10n.tuesday;
  //     case 3:
  //       return l10n.wednesday;
  //     case 4:
  //       return l10n.thursday;
  //     case 5:
  //       return l10n.friday;
  //     case 6:
  //       return l10n.saturday;
  //     case 7:
  //       return l10n.sunday;
  //     default:
  //       return l10n.day;
  //   }
  // }

  // static String themeTitle(BuildContext context, ThemeMode mode) {
  //   final l10n = l10nOf(context);

  //   switch (mode) {
  //     case ThemeMode.dark:
  //       return l10n.darkTheme;
  //     case ThemeMode.light:
  //       return l10n.lightTheme;
  //     case ThemeMode.system:
  //       return l10n.systemTheme;
  //   }
  // }

  static String localeTitle(BuildContext context, String locale) {
    final l10n = l10nOf(context);

    switch (locale) {
      case 'ru':
        return l10n.russianLanguage;
      // case 'be':
      //   return l10n.belarusianLanguage;
      // case 'pl':
      //   return l10n.polishLanguage;
      case 'en':
      default:
        return l10n.englishLanguage;
    }
  }
}
