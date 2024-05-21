import 'package:flutter/material.dart';
import 'package:shoesly/core/utils/constants/colors.dart';

class ElevetedButtonTheme {
  ElevetedButtonTheme._();

  static final lightElevetedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorsManager.white,
      backgroundColor: ColorsManager.black,
      side: const BorderSide(color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
