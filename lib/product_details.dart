import 'package:flutter/material.dart';
import 'package:navigation_exercise/product.dart';

class ProductDetails extends StatelessWidget {
  final List<Product> products;

  const ProductDetails({required this.products, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Details zu ")),
        body: Center(
          child: Column(
            children: [
              // const SizedBox(height: 20),
              // Text(
              //   shirt.title,
              //   style: const TextStyle(fontSize: 35),
              // ),
              // const SizedBox(height: 30),
              // Text(shirt.description),
              // Text("Preis: ${shirt.price.toStringAsFixed(2)}"),
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
