import 'package:flutter/material.dart';

class Themes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[800],
      buttonColor: Colors.white.withOpacity(0.3),
      primaryColor: Colors.green,
      textTheme: const TextTheme(
        headlineMedium: TextStyle(color: Colors.white),
        titleMedium: TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0),
        bodyLarge: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            letterSpacing: 1.0),
        displayMedium: TextStyle(color: Colors.white),
        displaySmall: TextStyle(color: Colors.green),
        // displayLarge: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white70,
      ));
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[200],
      buttonColor: Colors.grey.withOpacity(0.3),
      primaryColor: Colors.green,
      textTheme: const TextTheme(
        headlineMedium: TextStyle(color: Colors.black),
        titleMedium: TextStyle(
            color: Color.fromARGB(255, 68, 88, 97),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0),
        bodyLarge: TextStyle(
            color: Color.fromARGB(255, 68, 88, 97),
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            letterSpacing: 0.5),
        displayMedium: TextStyle(color: Colors.black),
        displaySmall: TextStyle(color: Colors.green),
        // displayLarge: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 68, 88, 97),
      ));
}
