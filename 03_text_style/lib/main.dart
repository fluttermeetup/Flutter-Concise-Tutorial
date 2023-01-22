import 'package:flutter/gestures.dart';
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
      title: 'Text Styles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Text Styles'),
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
        child: ListView(
          children: <Widget>[
            const Text(
              'Hello Text Style',
            ),
            const Text(
              'Text with font size 24 and underline',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                decoration: TextDecoration.underline,
              ),
            ),
            const Text(
              "Large bold font text",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.green,
                decoration: TextDecoration.none,
              ),
            ),
            const Text(
              "Welcome to Flutter 3.3! Only three months ago we announced Flutter 3, a massive milestone that included stable support for all platforms! The good news is that the momentum since this major release has not slowed down. Since the release of Flutter 3, Flutter has merged 5,687 pull requests.",
              textScaleFactor: 1.0,
              textAlign: TextAlign.left,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text.rich(
              TextSpan(
                text: "TextSpan",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 24.0,
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'mmmmm',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                  const TextSpan(
                    text: "nnnnnnnnn",
                    style: TextStyle(
                      color: Colors.cyan,
                    ),
                  ),
                  TextSpan(
                    text: "Tap action",
                    style: const TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 36,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("tap");
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
