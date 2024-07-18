import 'package:ecommerce/configs/config.dart';
import 'package:ecommerce/routes/home_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Config.seedColor,
        ),
        useMaterial3: true,
      ),
      home: const HomeRoute(),
      debugShowCheckedModeBanner: false,
    );
  }
}
