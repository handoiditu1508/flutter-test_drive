import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('products'),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('back'),
            )
          ],
        ),
      ),
    );
  }
}
