import 'package:flutter/material.dart';
import 'package:navigation_exercise/product.dart';

class ProductDetails extends StatelessWidget {
  final Product selectedProduct;

  const ProductDetails({required this.selectedProduct, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Details zu ")),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Text(
                selectedProduct.title,
                style: const TextStyle(fontSize: 35),
              ),
              const Spacer(),
              Text(selectedProduct.description),
              Text("Preis: ${selectedProduct.price.toString()}"),
              const Spacer(),
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
