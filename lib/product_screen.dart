import 'package:flutter/material.dart';
import 'package:navigation_exercise/product.dart';
import 'package:navigation_exercise/product_details.dart';

class ProductScreen extends StatelessWidget {
  final List<Product> products;

  const ProductScreen({required this.products, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produkte")),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text(products[index].title),
                subtitle: Text(products[index].description),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  // MaterialPageRoute(
                  //   builder: (context) =>
                  //       ProductDetails(products: products[index]),
                  // ),
                  //   );
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetails(products: products)));
          },
          child: const Icon(Icons.account_tree_outlined)),
    );
  }
}
