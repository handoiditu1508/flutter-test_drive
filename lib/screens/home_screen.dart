import 'package:ecommerce/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

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
      body: Center(
        child: TextButton(
          child: const Text('Next page'),
          onPressed: () {
            navigator.push(
                MaterialPageRoute(builder: (context) => const SecondScreen()));
          },
        ),
      ),
    );
  }
}
