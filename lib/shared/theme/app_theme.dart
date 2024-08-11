import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.orange,
      iconTheme: const IconThemeData(color: Colors.white),
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ).titleLarge,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.orange,
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.orange,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
    ),
    iconTheme: const IconThemeData(color: Colors.orangeAccent),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.orange,
      onPrimary: Colors.white,
      secondary: Colors.orangeAccent,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.black45,
      onSurface: Colors.white,
    ),
  );
}
