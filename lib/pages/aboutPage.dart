import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list.dart';
import 'package:iconsax/iconsax.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Uncomment the below image if you want to include a logo
              // Image.network(
              //   "https://zandokh.com/image/catalog/logo/TEN11.png",
              //   fit: BoxFit.cover,
              //   height: 70,
              // ),

              Card(
                margin: const EdgeInsets.all(16), // Card margins
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16), // Padding inside the card
                  child: const Text(
                    '''
Welcome to N4K SHOP, your ultimate destination for premium coffee and delicious meals! At N4K SHOP, we believe that every cup of coffee and every dish tells a story. Our menu is carefully curated to bring you the perfect blend of flavors, from aromatic cappuccinos to mouthwatering main courses. Whether you're stopping by for a quick drink, looking for the perfect meal, or simply indulging in a cozy café experience, we've got you covered.

We are committed to using the freshest ingredients and delivering impeccable service to ensure every visit is a delightful one.
Thank you for choosing N4K SHOP. Your satisfaction is our greatest reward.
                    ''',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5, // Improve line spacing
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ProfileSt(
                  textLable: "Privacy Policy",
                  icon: Iconsax.key,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ProfileSt(
                  textLable: "Terms and Conditions",
                  icon: Iconsax.group,
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("Version: V1.1.0", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}