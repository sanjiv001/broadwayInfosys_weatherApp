import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    cardTheme: const CardTheme(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        )),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(
      TextTheme(
        headlineLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        titleLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
        titleSmall: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.black,
            letterSpacing: 0),
        bodyMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    ),
  );
}
