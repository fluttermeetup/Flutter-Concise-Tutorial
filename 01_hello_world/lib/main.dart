import 'package:flutter/material.dart';

void main() {
  //step 1
  runApp(
    //step 2
    MaterialApp(
      //step 3
      home: Scaffold(
        //step 4
        appBar: AppBar(
          //step 5
          title: const Text("Cute Dogs"),
        ),
        drawer: const Drawer(
          child: Text("drawer"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/pexels-chevanon-photography-1108099.jpg'),
              const Text(
                'hello world!',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
