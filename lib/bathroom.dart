// William Glass
import 'package:flutter/services.dart';
import 'dart:async' show Future;
import 'dart:convert';


// reads bathroomList.json and makes a list of Bathroom items
Future<List<Bathroom>> loadBathroomJson() async {
  String data = await rootBundle.loadString('jsons/bathroomList.json');
  List<dynamic> bathroomJson = json.decode(data)["Bathroom"];
  List<Bathroom> bathroomListo =
  List<Bathroom>.from(bathroomJson.map<Bathroom>((dynamic i)
  => Bathroom.fromJson(i)));
  return bathroomListo;
}

class Bathroom {
  // ********************
  // *** Data Members ***
  // ********************
  String bldName = "";
  String roomNum = "";
  int sex = 0;
  int upVoteNum = 0;
  int downVoteNum = 0 ;
  bool accessibility = false;
  String addiInfo = "";


  // ********************
  // *** Constructors ***
  // ********************
  Bathroom({required this.roomNum,  required this.sex, required this.accessibility});

  Bathroom.set(this.bldName, this.roomNum, this.sex,
      this.upVoteNum, this.downVoteNum,
      this.accessibility, this.addiInfo);

	// **************************
	// *** JSON Needed Things ***
	// **************************

	Bathroom.fromJson(Map<String, dynamic> json) {
    bldName = json['bldName'];
    roomNum = json['roomNum'];
    sex = json['sex'];
    upVoteNum = json['upVoteNum'];
    downVoteNum = json['downVoteNum'];
    accessibility = json['accessibility'];
    addiInfo = json['addiInfo'];
	}

	Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bldName'] = this.bldName;
    data['roomNum'] = this.roomNum;
    data['sex'] = this.sex;
    data['upVoteNum'] = this.upVoteNum;
    data['downVoteNum'] = this.downVoteNum;
    data['accessibility'] = this.accessibility;
    data['addiInfo'] = this.addiInfo;
    return data;
	}

  // ****************************
  // *** Get member functions ***
  // ****************************
 String getBldName(){
    return bldName;
  }

  String getRoomNum(){
    return roomNum;
  }

  String getSex(){
    if (sex == 0){
      return "Male";
    }
    else if (sex == 1){
      return "Female";
    }
    else if (sex == 2){
      return "Unisex";
    }
    else{
      return "Unspecified";
    }
  }

  int getUpVoteNum(){
    return upVoteNum;
  }
  int getDownVoteNum(){
    return downVoteNum;
  }
  bool getAccessibility(){
    return accessibility;
  }
  String getAddiInfo(){
    return addiInfo;
  }


// ****************************
// *** Set member functions ***
// ****************************
  void setBldName(String bldName){
    this.bldName = bldName;
  }

  void setRoomNum(String roomNum){
    this.roomNum = roomNum;
  }

  void setSex(int sex){
    this.sex = sex;
  }

  void setUpVoteNum(int upVoteNum){
    this.upVoteNum = upVoteNum;
  }
  void setDownVoteNum(int downVoteNum){
    this.downVoteNum = downVoteNum;
  }
  void setAccessibility(bool accessibility){
    this.accessibility = accessibility;
  }
  void setAddiInfo(String addiInfo){
    this.addiInfo = addiInfo;
  }
// ***********************************
// *** Additional Member functions ***
// ***********************************

// ****************************
// *** Overloaded Operators ***
// ****************************


}

