import 'package:flutter/material.dart';
import 'package:state/picture_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String picName = "pexels-garfield-besa-686094.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            PictureView(picName: picName),
            TextButton(
              child: const Text(
                'Switch picture',
                style: TextStyle(fontSize: 32),
              ),
              onPressed: () {
                String tmpPicName = "pexels-garfield-besa-686094.jpg";
                if (picName == tmpPicName) {
                  tmpPicName = "pexels-chevanon-photography-1108099.jpg";
                }
                setState(() {
                  picName = tmpPicName;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
