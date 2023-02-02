import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      verticalDirection: VerticalDirection.up,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        ElevatedButton(
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
              foregroundColor: MaterialStatePropertyAll<Color>(
                Colors.green,
              ),
              backgroundColor: MaterialStatePropertyAll(
                Colors.yellow,
              )),
          onPressed: () {},
          child: const Text("Button 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Button 2"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Button 3"),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red,
        )
      ],
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        ElevatedButton(
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
              foregroundColor: MaterialStatePropertyAll<Color>(
                Colors.green,
              ),
              backgroundColor: MaterialStatePropertyAll(
                Colors.yellow,
              )),
          onPressed: () {},
          child: const Text("Button 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Button 2"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Button 3"),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red,
        )
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row & Column Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row & Column"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(5),
          children: [
            _buildRow(),
            _buildColumn(),
          ],
        ),
      ),
    );
  }
}
