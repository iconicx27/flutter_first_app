// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.pink,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      // brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.white),
      ));
}
