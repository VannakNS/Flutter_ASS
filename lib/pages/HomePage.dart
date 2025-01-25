import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/image.dart';
import 'package:flutter_application_1/pages/items_detail.dart';

class HomePage extends StatelessWidget {
  
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
          _buildBannerSection(),
          _buildCategorySection(),
          _buildBestSellerSection(),
          _buildProductGrid(),
          _buildBestSellerSectionGrid() ,
            const SizedBox(height: 40),

        ],
      ),
    );
  }

 Widget _buildCategorySection() {
  final List<Map<String, String>> categories = [
    {"image": "lib/image/c1.jpg", "title": "Coffee"},
    {"image": "lib/image/b1.jpg", "title": "Steak"},
    {"image": "lib/image/c2.jpg", "title": "Tea"},
    {"image": "lib/image/c3.jpg", "title": "Snacks"},
    {"image": "lib/image/c4.jpg", "title": "Desserts"},
    {"image": "lib/image/c6.jpg", "title": "Smoothies"},
    {"image": "lib/image/c7.jpg", "title": "Beverages"},
    
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              final category = categories[index];
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    // Category Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          // border: Border.all(color: Colors.grey[300]!, width: 1),
                        ),
                        child: Image.asset(
                          category["image"]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    // Category Title
                    Text(
                      category["title"]!,
                      style: TextStyle(
                        fontSize: 15,
                       
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    ),
  );
}

Widget _buildBannerSection() {
  final List<String> banners = [
    "lib/image/b1.jpg",
    "lib/image/b1.jpg",
    "lib/image/b1.jpg",
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: CarouselSlider(
      options: CarouselOptions(
        
        height: 120,
        
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: banners.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                banner,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        );
      }).toList(),
    ),
  );
}
    Widget _buildBestSellerSection() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best Seller",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          productList[index].image,
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        productList[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("\$${productList[index].price.toStringAsFixed(0)}"),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
    Widget _buildBestSellerSectionGrid() {
        
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "For You",
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
              childAspectRatio: 1.3,
            ),
            itemCount: 4, // Show top 4 best sellers
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        productList[index % productList.length].image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        "Coffee",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
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


