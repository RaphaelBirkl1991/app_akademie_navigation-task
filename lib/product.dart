import 'package:flutter/material.dart';
import 'package:navigation_exercise/product_details.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

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
                    builder: (context) => const ProductDetails()));
          },
          child: const Icon(Icons.account_tree_outlined)),
    );
  }
}
