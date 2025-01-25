
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list.dart';
import 'package:flutter_application_1/components/settingPage.dart';
import 'package:flutter_application_1/pages/aboutPage.dart';
import 'package:flutter_application_1/pages/loginPage.dart';

import 'package:iconsax/iconsax.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/image/c6.jpg'), // Replace with your image asset
            ),
            const SizedBox(height: 10),
            const Text(
              "Hello, NAK",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildOptionCard(context, Icons.account_circle, "My account", () {
              
              // Add your navigation or functionality here
            }),
            _buildOptionCard(context, Icons.library_books_outlined, "My order", () {
              // Add navigation or functionality here
            }),
            _buildOptionCard(context, Icons.payment, "Billing", () {
              // Add navigation or functionality here
            }),
            _buildOptionCard(context, Icons.color_lens, "Theme", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settingpage()),
              );
            }),
            _buildOptionCard(context, Icons.question_mark, "About Us", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Aboutus()),
              );
            }),
            _buildOptionCard(context, Icons.logout, "Logout", () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
              // Implement logout functionality
            }),
          ],
        ),
      ),
    );
  }
   Widget _buildOptionCard(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.inverseSurface),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}