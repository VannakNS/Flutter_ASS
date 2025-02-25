import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/ProductPage.dart';
import 'package:flutter_application_1/pages/setting_page.dart';

import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final List pages = [
    HomePage(),
    const ProductPage(),
    const Userpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow,
          backgroundColor: Theme.of(context).colorScheme.primary,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) => (setState(() {
                selectedIndex = value;
              })),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
           
            BottomNavigationBarItem(
                icon: Icon(Icons.store), label: "Product"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ]),
      body: pages[selectedIndex],
    );
  }
}
