
class Product {
  final int id;
  final String title;
  final String image;
  final double price;

  Product({required this.id, required this.title, required this.image, required this.price});
}

List<Product> productList = [
  Product(id: 1,title: "Latte", image: 'lib/image/p1.png', price: 1000),
  Product(id: 2,title: "Cappuccino", image: 'lib/image/p2.png', price: 1200),
  Product(id: 1,title: "Grilled Steak", image: 'lib/image/p6.png', price: 1500),
  Product(id: 1,title: " Mocha", image: 'lib/image/p3.png', price: 1500),
  Product(id: 1,title: "Seafood Salad ", image: 'lib/image/p4.png', price: 1500),
  Product(id: 1,title: " BBQ Pork with Rice", image: 'lib/image/p5.png', price: 1500),
  Product(id: 1,title: "Grilled Pork Chop ", image: 'lib/image/p8.png', price: 1500),
  Product(id: 1,title: " Chicken Steak", image: 'lib/image/p9.png', price: 1500),
  Product(id: 1,title: "Grilled Beef Steak ", image: 'lib/image/p10.png', price: 1500),
  Product(id: 1,title: " Chicken Steak", image: 'lib/image/p11.png', price: 1500),
  Product(id: 1,title: "Mocha", image: 'lib/image/p12.png', price: 1500),
  Product(id: 1,title: "Latte", image: 'lib/image/p13.png', price: 1500),
  Product(id: 1,title: "Cappuccino", image: 'lib/image/p14.png', price: 1500),
  // Add more products as needed
];

