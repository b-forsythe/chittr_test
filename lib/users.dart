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
  User(this.userName, this.userID);

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

  // ***********************************
  // *** Additional Member functions ***
  // ***********************************

  // ****************************
  // *** Overloaded Operators ***
  // ****************************


}