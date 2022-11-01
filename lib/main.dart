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
    return  MaterialApp(
      title: 'ChittR',

      home: MyHomePage(),
    );
  }
}


// Stateful widget for __myHomePage()

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:Text("Image Test"),
      backgroundColor:Colors.brown,
    ),


    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),

          child: Image.asset('assets/images/lowercampus.png',
                              width: 200,
                              height: 500,
                              fit: BoxFit.contain,
                              semanticLabel: 'UAF Lower Campus Map',
          ),
          )
        ]
      ),
    ),
    );
  }
}