// William Glass
import 'package:flutter/services.dart';
import 'dart:async' show Future;
import 'dart:convert';


// reads userList.json and makes a list of user objects
Future<List<User>> loadUserJson() async {
  String data = await rootBundle.loadString('jsons/userList.json');
  List<dynamic> userJson = json.decode(data)["User"];
  List<User> UserListo =
  List<User>.from(userJson.map<User>((dynamic i)
  => User.fromJson(i)));
  return UserListo;
}

class User {
  // ********************
  // *** Data Members ***
  // ********************
  String userName = "";
  int userID = 0;

  // ********************
  // *** Constructors ***
  // ********************
  User();
  User.set(this.userName, this.userID);

  // **************************
  // *** JSON Needed Things ***
  // **************************

  User.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    userID = json['userID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['userID'] = this.userID;
    return data;
  }

  // ****************************
  // *** Get member functions ***
  // ****************************

  String getUserName(){
    return userName;
  }

  int getUserID(){
    return userID;
  }

  // ****************************
  // *** Set member functions ***
  // ****************************

  void setUserName(String userName){
    this.userName = userName;
  }
  void setUserID(int userID){
    this.userID = userID;
  }

  // ***********************************
  // *** Additional Member functions ***
  // ***********************************

  // ****************************
  // *** Overloaded Operators ***
  // ****************************


}