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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flex Expanded'),
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
  Widget _buildRow() {
    return Row(
      children: [
        Container(
          width: 100,
          height: 200,
          color: Colors.cyan,
        ),
        Expanded(
          child: Container(
            height: 200,
            color: const Color.fromARGB(255, 158, 75, 44),
          ),
        ),
      ],
    );
  }

  Widget _buildColumn() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          _buildRow(),
          SizedBox(
            height: 300,
            child: _buildColumn(),
          ),
        ],
      ),
    );
  }
}
