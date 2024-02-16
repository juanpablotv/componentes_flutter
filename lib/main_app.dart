import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practica_3/home_screeen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme:  ThemeData (
        scaffoldBackgroundColor: Color.fromARGB(255, 67, 180, 233),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 158, 169, 228)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 4, 4, 61),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',

            ),
          ),
        ),
    ); 
  }
}
