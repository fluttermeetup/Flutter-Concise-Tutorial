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
      title: 'Flutter Container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Container'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(
          height: 200.0,
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(8.0),
        //color: Colors.teal.shade700,
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          gradient: RadialGradient(
            colors: [Colors.red, Colors.green],
            center: Alignment.topLeft,
            radius: .80,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 12,
              offset: Offset(0, 2),
              color: Colors.blue,
            ),
          ],
        ),
        child: Text(
          "Hello Fluter Container",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
