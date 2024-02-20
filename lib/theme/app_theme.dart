
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 131, 131, 243); 
  static const backColor = Color.fromARGB(255, 155, 198, 238);


  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor:  backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme:  TextTheme(
      headlineLarge:  GoogleFonts.montserrat(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 2.0,
        fontStyle: FontStyle.italic
        
      ),
    ),
    
  );
}