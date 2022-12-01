// Samuel Gallagher
// December 1, 2022
// Contains Listing class

import 'package:flutter/material.dart';
import 'bathroom.dart';
// For bathroom class


// Listing page class
// Takes a Bathroom class object
// Example of creating page:
//    var bath = Bathroom(roomNum: '1',sex: 0,accessibility: false);
//    Navigator.push(context, MaterialPageRoute(builder: (context) => Listing(bath)) );
class Listing extends StatelessWidget {
  Listing(this.listingData);

  final Bathroom listingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bathroom name: " + listingData.roomNum.toString()),
                  Text("Sex: " + listingData.sex.toString()),
                  Text("Wheelchair Accessable: " + listingData.accessibility.toString()),
                  Text("Additional Info: " + listingData.addiInfo),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      },
                    child: Text("Back"),
                  )
                ],
              ),
            )
    );
  }
}