import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Flexible(
            fit: FlexFit.tight,
            child: Text(
              "Ecommerce",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.cloud_outlined),
              text: "Cloud",
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
              text: "Beach",
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
              text: "Sunny",
            ),
          ]),
        ),
        body: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              const Placeholder(
                fallbackHeight: 200,
              )
          ],
        ),
      ),
    );
  }
}
