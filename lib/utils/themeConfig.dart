import 'package:flutter/material.dart';

enum ThemeSwatches { LIGHT, DARK }

class ThemeConfig {
  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    backgroundColor: Colors.black,
//    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
    fontFamily: 'Montserrat',
  );

  static final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    fontFamily: 'Montserrat',
  );

  static ThemeData getTheme(ThemeSwatches themeSwatches) {
    switch (themeSwatches) {
      case ThemeSwatches.LIGHT:
        return lightTheme;
      case ThemeSwatches.DARK:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}
