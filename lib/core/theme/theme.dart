import 'package:flutter/material.dart';
import 'package:shoesly/core/utils/constants/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Urbanist',
    brightness: Brightness.light,
    primaryColor: ColorsManager.primary,
    scaffoldBackgroundColor: ColorsManager.scaffoldBackground,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: ColorsManager.scaffoldBackground,
      scrolledUnderElevation: 0,
    ),
  );
}
