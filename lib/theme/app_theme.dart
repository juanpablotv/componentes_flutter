
import 'package:flutter/material.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 4, 4, 61); 
  static const backColor = Color.fromARGB(255, 90, 153, 212);


  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor:  backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-serif',
      ),
    ),
    
  );
}