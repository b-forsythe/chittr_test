// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() { // Base run for App.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // Base app creation
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget { // Stateful widget for MyHomePage()

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {    // Creation of Home Page
  @override
  Widget build(BuildContext context) {    // Design Widget
    return Scaffold(
      appBar: AppBar(     // "Header" for Main page
        title: Text("ChittR (Lower Campus)"),
        centerTitle: (true),
        backgroundColor: Colors.brown,
      ),
      body: Center(     // <- This constitutes everything under the header
        child: Stack(
          children: [
            Image.asset(    // Image Creator for lower campus map
              'assets/images/lowercampus.png',
              width: 400,
              height: 500,
              fit: BoxFit.contain,
              semanticLabel: 'UAF Lower Campus Map',
            ),

            Align(    // Brooks Building
              alignment: const FractionalOffset(0.5, 0.04),     // Determines x,y position of button
              child: IconButton(
                icon: Image.asset('assets/images/brookspin.png'),     // Loads image
                iconSize: 78,     // Sets size
                onPressed: () {
                  Navigator.push(     // Push adds a new "Route" so that app can move to that screen
                    context,
                    MaterialPageRoute(builder: (context) => const BrooksPage()), // On click, will move to the -- const (pageName) page.
                  );
                },

              ),
            ),

            Align( // Bunnell Building  ( See Brooks building comments for how all this works)
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

class BrooksPage extends StatelessWidget {    // Creates a new "Page" using a class.
  const BrooksPage({super.key});

  @override

  Widget build(BuildContext context){   // Build Widget for design of page.
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);   // On click, will return to "context" (in this case, home page).
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
