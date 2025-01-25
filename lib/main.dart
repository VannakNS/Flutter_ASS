import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/MainPage.dart';
import 'package:flutter_application_1/theme/theme_provider.dart';
import 'package:provider/provider.dart';
// import 'Layout.dart';
// import 'fb_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Home(),
     
      ),
  );
  
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: Provider.of<ThemeProvider>(context).themeData,

      home: MainPage());
  }
}
