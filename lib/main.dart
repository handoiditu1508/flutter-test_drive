import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: DocumentScreen(document: Document()));
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    super.key,
    required this.document,
  });

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Last modified $modified'),
          ),
        ],
      ),
    );
  }
}
