import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00BFA5),
        title: const Text('Product Details'),
      ),
      body: Center(
        child: Text('Product Details'),
      ),
    );
  }
}
