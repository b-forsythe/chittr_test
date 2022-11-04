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
              alignment: const FractionalOffset(0.5, 0.04),
              child: IconButton(
                icon: Image.asset('assets/images/brookspin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BrooksPage()),
                  );
                },

              ),
            ),

            Align( // Bunnell Building
              alignment: const FractionalOffset(0.35, 0.5),
              child: IconButton(
                icon: Image.asset('assets/images/bunnellpin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BunnellPage()),
                  );
                },
              ),
            ),

            Align( // Duckering Building
              alignment: const FractionalOffset(0.75, 0.15),
              child: IconButton(
                icon: Image.asset('assets/images/duckpin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuckPage()),
                  );
                },
              ),
            ),

            Align( // ELIF Building
              alignment: const FractionalOffset(0.87, 0.58),
              child: IconButton(
                icon: Image.asset('assets/images/elifpin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ELIFPage()),
                  );
                },
              ),
            ),
          ], // CHILDREN
        ),
      ),
    );
  }
}

class BrooksPage extends StatelessWidget {
  const BrooksPage({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, child: const Text("Your mom"),
        ),
      )

    );
  }
}



class BunnellPage extends StatelessWidget {
  const BunnellPage({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Your Dad"),
        ),
      )
    );
  }
}

class DuckPage extends StatelessWidget {
  const DuckPage({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text ("Your Grandfather"),
        )
      )
    );
  }
}



class ELIFPage extends StatelessWidget {
  const ELIFPage({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Your Grandmother"),
        )
      )
    );
  }
}
