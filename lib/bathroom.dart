// William Glass

class Bathroom {
  // ********************
  // *** Data Members ***
  // ********************
  String bldName = "";
  String roomNum = "";
  int sex = 0; // 0 for male, 1 for female, and 2 for Unisex
  int upVoteNum = 0;
  int downVoteNum = 0;
  bool accessibility = false;
  String addiInfo = "";


  // ********************
  // *** Constructors ***
  // ********************

  Bathroom();

  Bathroom.set(this.bldName, this.roomNum, this.sex,
      this.upVoteNum, this.downVoteNum,
      this.accessibility, this.addiInfo);

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