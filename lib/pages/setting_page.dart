
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list.dart';
import 'package:flutter_application_1/components/settingPage.dart';
import 'package:flutter_application_1/pages/aboutPage.dart';

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
      backgroundColor:Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("My Account"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              
              
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Ms thida",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              const SizedBox(
                height: 10,
              ),
             
              ProfileSt(
                textLable: "wallet",
                icon: Iconsax.wallet,
                onTap: () {},
              ),
              ProfileSt(
                textLable: "My order",
                icon: Icons.library_books_outlined,
                onTap: () {},
              ),
              ProfileSt(
                textLable: "My account",
                icon: Icons.person,
                onTap: () {},
              ),
              ProfileSt(
                textLable: "Customer spport",
                icon: Icons.chat_rounded,
                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const Settingpage()));},
              ),
              ProfileSt(
                textLable: "About Us",
                icon: Icons.ads_click_sharp,
                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const Aboutus()));},
              ),
              ProfileSt(
                textLable: "Setting",
                icon: Icons.settings,
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Settingpage()));
                },
              ),
              // ProfileSt(
              //     textLable: "Logout",
              //     icon: Icons.logout,
              //     onTap: () => signOutUser(context)),
            ],
          ),
        ),
      ),
    );
  }
}