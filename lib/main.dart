// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

// Stateful widget for __myHomePage()

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChittR (Lower Campus)"),
        centerTitle: (true),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/lowercampus.png',
              width: 400,
              height: 500,
              fit: BoxFit.contain,
              semanticLabel: 'UAF Lower Campus Map',
            ),

            Align( // Brooks Building
              alignment: FractionalOffset(0.5, 0.04),
              child: IconButton(
                icon: Image.asset('assets/images/brookspin.png'),
                iconSize: 78,
                onPressed: () {}, // TODO, ADD CLICK FUNCTIONALITY
              ),
            ),

            Align( // Bunnell Building
              alignment: FractionalOffset(0.35, 0.5),
              child: IconButton(
                icon: Image.asset('assets/images/bunnellpin.png'),
                iconSize: 78,
                onPressed: () {}, // TODO, ADD CLICK FUNCTIONALITY
              ),
            ),

            Align( // Duckering Building
              alignment: FractionalOffset(0.75, 0.15),
              child: IconButton(
                icon: Image.asset('assets/images/duckpin.png'),
                iconSize: 78,
                onPressed: () {}, // TODO, ADD CLICK FUNCTIONALITY
              ),
            ),

            Align( // ELIF Building
              alignment: FractionalOffset(0.87, 0.58),
              child: IconButton(
                icon: Image.asset('assets/images/elifpin.png'),
                iconSize: 78,
                onPressed: () {}, // TODO, ADD CLICK FUNCTIONALITY
              ),
            ),
          ], // CHILDREN
        ),
      ),
    );
  }
}
