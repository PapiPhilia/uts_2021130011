import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: Center(
        child: AppBar(
        title: const Text(
          'Product A',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
        ),
      ),
      ),
    );
  }
}