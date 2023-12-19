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
    final shirt = Product("Hemd", "Ein Hemd das wirklich gut passt", 49.90);

    return MaterialApp(
      home: ProductScreen(shirt: shirt),
    );
  }
}
