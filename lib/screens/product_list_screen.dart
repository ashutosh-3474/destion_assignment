import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: 'Apple',
        price: 1.99,
        imageUrl: 'assets/apple.png',
        discount: 0.1,
      ),
      Product(
        name: 'Banana',
        price: 0.99,
        imageUrl: 'assets/banana.png',
      ),
      Product(
        name: 'Orange',
        price: 1.49,
        imageUrl: 'assets/orange.png',
        discount: 0.15,
      ),
      Product(
        name: 'Milk',
        price: 2.99,
        imageUrl: 'assets/milk.png',
      ),
      Product(
        name: 'Bread',
        price: 2.49,
        imageUrl: 'assets/bread.png',
        discount: 0.2,
      ),
      Product(
        name: 'Eggs',
        price: 3.99,
        imageUrl: 'assets/egg.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00BFA5),
        title: const Text('Grocery Products'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
          return MasonryGridView.count(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          );
        },
      ),
    );
  }
}
