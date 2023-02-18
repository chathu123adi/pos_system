import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
          color: Colors.black87
      ),
      subtitle1: GoogleFonts.montserrat(
          color: Colors.black54,
          fontSize: 35
      ),

      bodyText1: GoogleFonts.montserrat(
          color: Colors.black45,
          fontSize: 28
      ),

    button: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 40
    )
  );
}