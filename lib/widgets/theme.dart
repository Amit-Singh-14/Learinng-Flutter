import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightMode(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: darkBlusidhColor,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: darkBlusidhColor),
      backgroundColor: darkBlusidhColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
      ));

  static ThemeData darkMode(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      accentColor: lightBlusidhColor,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightBlusidhColor),
      backgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBlusidhColor = Color(0xff403b58);
  static Color lightBlusidhColor = Vx.indigo500;
}
