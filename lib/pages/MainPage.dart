import 'package:flutter/material.dart';
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
    const Homepage(),
    const ProductPage(),
    const Userpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black38,
          selectedItemColor: Colors.black,
          backgroundColor: Theme.of(context).colorScheme.primary,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) => (setState(() {
                selectedIndex = value;
              })),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "Home"),
           
            BottomNavigationBarItem(
                icon: Icon(Iconsax.box), label: "Product"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ]),
      body: pages[selectedIndex],
    );
  }
}
