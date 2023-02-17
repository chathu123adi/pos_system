import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos_system/utils/widget_theme.dart';

class AppTheme {

  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.deepPurple, //Colors.blue
      textTheme: AppTextTheme.lightTextTheme,
    // elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );


  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark
  );
}