import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color rimario
    primaryColor: primary,

    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    // FloatingActionBUtton theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    //ElevationButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    // InputDecoration theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      iconColor: primary,
      suffixIconColor: primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color rimario
      primaryColor: primary,

      // AppBar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
