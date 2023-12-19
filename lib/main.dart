import 'package:flutter/material.dart';
import 'package:navigation_exercise/product.dart';
import 'package:navigation_exercise/product_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      const Product(
          title: "Sneakers",
          description: "Schöne Sneakers mit einem modernen Fit",
          price: 169.99),
      const Product(
          title: "T-Shirt",
          description: "Ein T-Shirt aus 100% Baumwolle",
          price: 29.99),
      const Product(
          title: "Hose",
          description: "Eine gemütliche Hosen mit Elastan",
          price: 59.99),
      const Product(
          title: "Hemd",
          description: "Ein Hemd das wirklich gut passt",
          price: 49.99),
      const Product(
          title: "Pullover",
          description: "Ein Pullover aus 100% Baumwolle",
          price: 79.99),
    ];

    return MaterialApp(
      home: ProductScreen(products: products),
    );
  }
}
