import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xFfB7935F);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      secondaryHeaderColor: Color(0xFF242424),
      primaryColor: lightColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF242424),
          unselectedItemColor: Colors.white,
          selectedLabelStyle: GoogleFonts.elMessiri(),
          unselectedLabelStyle: GoogleFonts.elMessiri()),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Color(0xFF242424)),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242424))),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color(0xFF242424)),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true));
  static ThemeData darkTheme = ThemeData();
}
