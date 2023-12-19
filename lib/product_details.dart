import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Details zu Hemd")),
        body: const Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Hemd",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(height: 30),
              Text("Ein Hemd das wirklich gut passt"),
              Text("Preis: 49,90 Euro"),
            ],
          ),
        ));
  }
}
