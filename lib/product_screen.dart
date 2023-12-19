import 'package:flutter/material.dart';
import 'package:navigation_exercise/product.dart';
import 'package:navigation_exercise/product_details.dart';

class ProductScreen extends StatelessWidget {
  final Product shirt;

  const ProductScreen({required this.shirt, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produkte")),
      body: const Center(
          child: Text(
        'Schaue ein schönes Produkt an, \n indem du auf den FAB drückst!',
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetails(shirt: shirt)));
          },
          child: const Icon(Icons.account_tree_outlined)),
    );
  }
}
