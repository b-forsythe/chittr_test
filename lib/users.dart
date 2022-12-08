// William Glass

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


  User.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    userID = json['userID'];
  }

}