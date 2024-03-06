import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Aqui hago las declaraciones de los colores
  static const mainColor = Color.fromARGB(255, 38, 71, 94);
  static const backColor = Color.fromARGB(255, 213, 229, 249);
  static const bodyColor = Color.fromARGB(255, 13, 106, 255);
  static const accentColor = Color.fromARGB(255, 44, 47, 64);

  //Aqui las declaraciones del tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: mainColor,
      titleTextStyle: GoogleFonts.lato(
        color: backColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: accentColor,
      size: 32.0,
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
          GoogleFonts.montserrat(fontSize: 22.0),
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.montserrat(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
        //esto es para poner una linea debajo del texto
        // decoration: TextDecoration.underline,
        //esto es para ponerle color a la linea
        //decorationColor: mainColor,
        //esto es para agregar otras cosas a la linea
        decorationStyle: TextDecorationStyle.dotted,
        decorationThickness: 3.0,
        fontStyle: FontStyle.italic,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: mainColor,
        //aqui es para cambiar el tamaño del nombre que se ingresa
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.dotted,
        decorationThickness: 1.5,
      ),
      bodySmall: GoogleFonts.montserrat(
        color: bodyColor,
        decorationStyle: TextDecorationStyle.dashed,
      ),
    ),
  );
}
