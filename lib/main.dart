import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget(
      {super.key, required super.child, required this.message});

  // final Widget child;

  // message of our inherited widget class
  final String message;

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.message != message;
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: MyInheritedWidget(
        message: 'Hello World!',
        child: Builder(builder: (BuildContext innerContext) {
          return Center(
            child: Text(
              MyInheritedWidget.of(innerContext).message,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }),
      ),
    );
  }
}
