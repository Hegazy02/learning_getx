import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
      useMaterial3: true, appBarTheme: const AppBarTheme(color: Colors.red));
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
      useMaterial3: true, appBarTheme: const AppBarTheme(color: Colors.purple));
}
