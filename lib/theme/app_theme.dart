
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 131, 131, 243); 
  static const backColor = Color.fromARGB(255, 155, 198, 238);
  static const accentColor = Color.fromARGB(255, 108, 146, 170);
  static const accentColor2 = Color.fromARGB(255, 170, 39, 187);


  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor:  backColor,
    appBarTheme: const AppBarTheme(
      color: mainColor,
      titleTextStyle: GoogleFonts.lato(
          color: backColor,
          fontSize: 28.5,
          fontWeight: FontWeight.bold,
          
          ),
        ),
    iconTheme: const IconThemeData(
      color: accentColor,
      size: 30.0,
    ),  
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          accentColor,
          ),
        foregroundColor: MaterialStateProperty.all(
          backColor,
        ),  
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(color:backColor),
        ),  
      ),
      
    ),
    textTheme:  TextTheme(
      headlineLarge:  GoogleFonts.acme(
        color: mainColor,
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 2.0,
        fontStyle: FontStyle.italic
        
      ),
      headlineMedium: GoogleFonts.acme(
          color: mainColor,
          fontSize: 22.0,
          fontWeight: FontWeight.w500,
          decorationStyle: TextDecorationStyle.double,
          decorationThickness: 1.5,
          ),
      ),
    
  );
}