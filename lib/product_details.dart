import 'package:flutter/material.dart';
import 'package:navigation_exercise/product.dart';

class ProductDetails extends StatelessWidget {
  final Product shirt;

  const ProductDetails({required this.shirt, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Details zu Hemd")),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                shirt.name,
                style: const TextStyle(fontSize: 35),
              ),
              const SizedBox(height: 30),
              Text(shirt.description),
              Text("Preis: ${shirt.price.toStringAsFixed(2)}"),
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
