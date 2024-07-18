import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Flexible(
          child: Text(
            "Ecommerce",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: ListView(
        children: [
          for (var i = 0; i < 10; i++)
            const Placeholder(
              fallbackHeight: 200,
            )
        ],
      ),
    );
  }
}
