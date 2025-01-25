import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/image.dart';
import 'package:flutter_application_1/pages/items_detail.dart'; // Ensure this is the correct import path

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _selectedCategoryIndex = 0;
  List<String> categories = [
    "All",
    "Soft Drink",
    "Coffee",
    "Tea",
    "All",
    "Soft Drink",
    "Coffee",
    "Tea"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Set your desired height
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary, // AppBar background color
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30), // Rounded bottom corners
            ),
          ),
          child: AppBar(
            title: const Text(
              "NAK Coffee",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cursive', // Cursive font for a warm feel
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {}, // Add your cart action
                icon: const Icon(
                  Icons.local_cafe_outlined, // Coffee cup icon
                  size: 30,
                ),
              ),
            ],
            backgroundColor: Colors.transparent, // Make AppBar background transparent
            foregroundColor: Colors.white, // Coffee color for the icons and text
            elevation: 0, // No shadow for the AppBar itself
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _categorySelector(),
          _buildProductGrid(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _categorySelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            "Explore Products",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        // Category List
        SizedBox(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              bool isActive = index == _selectedCategoryIndex;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedCategoryIndex = index; // Update selected category
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: isActive
                            ? Colors.grey
                            : Theme.of(context).colorScheme.inverseSurface,
                        width: 0.5,
                      ),
                    ),
                    backgroundColor: isActive
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: 13,
                        color: isActive ? Colors.white : Theme.of(context).colorScheme.inverseSurface,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

   
  Widget _buildProductGrid() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Products",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to ProductDetailPage when clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.asset(
                        productList[index].image,
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productList[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("\$${productList[index].price.toStringAsFixed(0)}"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}
}
