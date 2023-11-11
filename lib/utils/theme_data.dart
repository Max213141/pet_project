import 'package:flutter/material.dart';
import 'package:life_sync/utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColor.primaryColorLight,
      // onPrimary: AppColor.mainDarkColor,

      background: AppColor.backgroundColorLight,
      secondary: AppColor.accentColorLight),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColor.textColorLight),
  ),
);

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColor.primaryColorDark,
    onPrimary: AppColor.mainDarkColor,
    background: AppColor.mainDarkColor,
    secondary: AppColor.accentColorDark,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColor.textColorDark),
  ),
);
