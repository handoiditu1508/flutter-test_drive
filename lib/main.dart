import 'package:ecommerce/configs/config.dart';
import 'package:ecommerce/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ecommerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Config.seedColor,
        ),
        useMaterial3: true,
      ),
      routerConfig: routes2,
      debugShowCheckedModeBanner: false,
    );
  }
}
