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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Buttons'),
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
      body: Center(
        child: ButtonBar(
          children: <Widget>[
            const BackButton(
              color: Colors.orange,
            ),
            OutlinedButton(
              onPressed: () {
                print("press outlined button");
              },
              child: const Text("Outlined Button"),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text("Disabled Outlined Button"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.add_to_photos,
                size: 24.0,
              ),
              label: const Text("Outlined icon button"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "text button",
                style: TextStyle(
                  fontSize: 36.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated Button",
                style: TextStyle(
                  fontSize: 36.0,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                "Material button",
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              child: const Text("Raw Material Button"),
            ),
            FloatingActionButton(
              onPressed: () {},
              heroTag: "floating button",
              tooltip: "floating button prompt",
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
