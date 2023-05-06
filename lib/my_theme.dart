import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xFfB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightColor,
          onPrimary: Colors.white,
          secondary: Color(0xFFB7935F),
          onSecondary: Colors.black38,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: lightColor,
          surface: Colors.white,
          onSurface: Colors.grey.shade400),
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
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkColor,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: Color(0xFF141A2E),
          onSecondary: yellowColor,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: yellowColor,
          surface: Color(0xFF141A2E),
          onSurface: Colors.grey.shade400),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: yellowColor,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: GoogleFonts.elMessiri(),
          unselectedLabelStyle: GoogleFonts.elMessiri()),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.w300, color: yellowColor),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true));
}
