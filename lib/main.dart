import 'package:flutter/material.dart';

const owlUrl =
    'https://raw.githubusercontent.com/flutter/website/main/src/content/assets/images/docs/owl.jpg';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({super.key});

  @override
  State<FadeInDemo> createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      const Image(image: AssetImage("assets/owl.jpg")),
      TextButton(
        child: const Text(
          'Show Details',
          style: TextStyle(color: Colors.blueAccent),
        ),
        onPressed: () => {},
      ),
      const Column(
        children: [
          Text('Type: Owl'),
          Text('Age: 39'),
          Text('Employment: None'),
        ],
      ),
    ]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: FadeInDemo(),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MyApp(),
  );
}
