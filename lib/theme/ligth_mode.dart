import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300, // Background for components like cards
    primary: Color.fromARGB(255, 64, 52, 52), // Primary color for key UI elements
    secondary: Colors.grey.shade200, // Accent color for highlights
    inversePrimary: Colors.grey.shade300, // Contrast color for primary
    inverseSurface: Colors.black,
  ),
);