import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/dark_mod.dart';
import 'package:flutter_application_1/theme/ligth_mode.dart';


class ThemeProvider extends ChangeNotifier {

  ThemeData _themeData = lightMode; // Default to light mode
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) { // Lowercase setter name
    _themeData = themeData;
    notifyListeners(); // Notify listeners about the change
  }

  void toggleTheme() { // Fixed typo in method name
    if (_themeData == lightMode) {
      themeData = darkMode; // Switch to dark mode
    } else {
      themeData = lightMode; // Switch to light mode
    }
  }

  
  
  
}