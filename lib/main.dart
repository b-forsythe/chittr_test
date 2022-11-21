// Copyright 2022 ChittR LLC.


import 'package:flutter/material.dart';

//import 'dart:convert'; // MAY BE TEMP USED FOR JSON FILES
import 'bathroom.dart'; // ~B : I'm going to try implementing this at the bottom.

void main() {
  // Base run for App.
  runApp(const MyApp());

  // Ignore Bellow Testing List of Bathrooms
  /*
  var test1 = Bathroom.set("ELIF", "100F", 1, 2,0,false,"no additional info");
  var test2 = Bathroom.set("ELIF", "100M", 0, 2,0,false,"no additional info");
  List<Bathroom> bathroomList = [];
  bathroomList.add(test1);
  bathroomList.add(test2);
  */

}

class MyApp extends StatelessWidget {
  // Base app creation
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => MyHomePage(),
        '/brooks': (context) => BrooksPage(),
        '/bunnell': (context) => BunnellPage(),
        '/duck': (context) => DuckPage(),
        '/elif': (context) => ELIFPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Stateful widget for MyHomePage()

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Creation of Home Page
  @override
  Widget build(BuildContext context) {
    // Design Widget
    return Scaffold(
      appBar: AppBar(
        // "Header" for Main page
        title: Text("ChittR (Lower Campus)"),
        centerTitle: (true),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        // <- This constitutes everything under the header
        child: Stack(
          children: [
            Image.asset(
              // Image Creator for lower campus map
              'assets/images/lowercampus.png',
              width: 400,
              height: 500,
              fit: BoxFit.contain,
              semanticLabel: 'UAF Lower Campus Map',
            ),
            Align(
              // Brooks Building
              alignment: const FractionalOffset(0.5, 0.04),
              // Determines x,y position of button
              child: IconButton(
                icon: Image.asset('assets/images/brookspin.png'), // Loads image
                iconSize: 78, // Sets size
                onPressed: () {
                  Navigator.pushNamed(context, '/brooks');
                },
              ),
            ),
            Align(
              // Bunnell Building  ( See Brooks building comments for how all this works)
              alignment: const FractionalOffset(0.35, 0.5),
              child: IconButton(
                icon: Image.asset('assets/images/bunnellpin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.pushNamed(context, '/bunnell');
                },
              ),
            ),
            Align(
              // Duckering Building
              alignment: const FractionalOffset(0.75, 0.15),
              child: IconButton(
                icon: Image.asset('assets/images/duckpin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.pushNamed(context, '/duck');
                },
              ),
            ),
            Align(
              // ELIF Building
              alignment: const FractionalOffset(0.87, 0.58),
              child: IconButton(
                icon: Image.asset('assets/images/elifpin.png'),
                iconSize: 78,
                onPressed: () {
                  Navigator.pushNamed(context, '/elif');
                },
              ),
            ),
          ], // CHILDREN
        ),
      ),
    );
  }
}

//    -------------------------------
//             Brooks Building
//    -------------------------------

class BrooksPage extends StatelessWidget {
  // Creates a new "Page" using a class.
  const BrooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Build Widget for design of page.
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(
              context); // On click, will return to "context" (in this case, home page).
        },
        child: const Text("Your mom"),
      ),
    ));
  }
}

//    -------------------------------
//            Bunnell Building
//    -------------------------------

class BunnellPage extends StatelessWidget {
  const BunnellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Your Dad"),
      ),
    ));
  }
}

//    -------------------------------
//           Duckering Building
//    -------------------------------

class DuckPage extends StatelessWidget {
  const DuckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Your Grandfather"),
    )));
  }
}

//    -------------------------------
//              ELIF Building
//    -------------------------------

class ELIFPage extends StatefulWidget {
  @override
  State<ELIFPage> createState() => _ELIFPageState();
}

class _ELIFPageState extends State<ELIFPage> {

  List<String> floorNumbers = ["Floor 1", "Floor 2", "Floor 3", "Floor 4", "Floor 5"];
  String selectVal = "Floor 1";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ELIF Building"),
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
          ),
          body: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Home"),
                ),
              ),

               // --------------------------
               //   Drop-down Menu Selector
               // --------------------------
               Padding(
                  padding: const EdgeInsets.only(top:1),
                   child: DropdownButton(
                     isExpanded: true,
                     value: selectVal,
                     onChanged: (value){
                       setState(() {
                         selectVal = value.toString();
                       });
                     },
                     items: floorNumbers.map((itemone){
                       return DropdownMenuItem(
                           value: itemone,
                           child: Text(itemone)
                       );
                     }).toList(),
                  )),
            ],
          )),
    );
  }

  // --------------------------
  //     Room List Selector
  // --------------------------
  /*
  Widget _buildList() {
    return ListView(

      children: [
        _roomSelector(),
      ],

    );
  }

  ListTile _roomSelector(Icon roomPreview, Bathroom roomData) {
    return ListTile(

    );
  } */

}
