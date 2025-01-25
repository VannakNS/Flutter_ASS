import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.white, // Background for components like cards
    primary: Color.fromARGB(255, 29, 26, 26), // Primary color for key UI elements
    secondary: Colors.grey.shade200, // Accent color for highlights
    inversePrimary: Colors.white, // Contrast color for primary
    inverseSurface: Color.fromARGB(255, 64, 52, 52),
  ),
);