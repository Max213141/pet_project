import 'package:flutter/material.dart';
import 'package:pet_project/utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColor.primaryColorLight,
      background: AppColor.backgroundColorLight,
      secondary: AppColor.accentColorLight),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColor.textColorLight),
  ),
);

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColor.primaryColorDark,
    background: AppColor.backgroundColorDark,
    secondary: AppColor.accentColorDark,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColor.textColorDark),
  ),
);
