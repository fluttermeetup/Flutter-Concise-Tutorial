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
      title: 'Material App Demo',
      color: Colors.yellow,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowMaterialGrid: true,
      showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: const Text("Material App Demo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_photo_alternate,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      persistentFooterButtons: const [
        Text("persistentFooterButton 1"),
        Text("persistentFooterButton 2"),
      ],
      drawer: const Drawer(
        child: Text(
          "drawer",
          style: TextStyle(
            fontSize: 36,
            color: Colors.blue,
          ),
        ),
      ),
      endDrawer: const Drawer(
        child: Text(
          "Right drawer",
          style: TextStyle(
            fontSize: 54,
          ),
        ),
      ),
      bottomNavigationBar: const Text("bottomNavigationBar"),
      bottomSheet: const Text("bottomSheet"),
      backgroundColor: Colors.amberAccent,
      resizeToAvoidBottomInset: true,
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "OutlineButton",
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
