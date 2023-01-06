import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Primary color
      primaryColor: Colors.green,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // Floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 0),

      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      )
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.green, shape: StadiumBorder()),
          ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.green,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
