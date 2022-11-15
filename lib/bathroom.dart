// William Glass

class Bathroom {
  // ********************
  // *** Data Members ***
  // ********************
  String bld_name = "";
  String room_num = "";
  int sex = 0; // M for male, F for female, and U for Unisex
  int up_vote_num = 0;
  int down_vote_num = 0;
  bool accessibility = false;
  String addi_info = "";


  // ********************
  // *** Constructors ***
  // ********************

  Bathroom(this.bld_name, this.room_num, this.sex,
      this.up_vote_num, this.down_vote_num,
      this.accessibility, this.addi_info);

  // ****************************
  // *** Get member functions ***
  // ****************************
  String get_bld_name(){
    return bld_name;
  }

  String get_room_num(){
    return room_num;
  }

  String get_sex(){
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

  int get_up_vote_num(){
    return up_vote_num;
  }
  int get_down_vote_num(){
    return down_vote_num;
  }
  bool get_accessibility(){
    return accessibility;
  }
  String get_addi_info(){
    return addi_info;
}


// ****************************
// *** Set member functions ***
// ****************************

// ***********************************
// *** Additional Member functions ***
// ***********************************

// ****************************
// *** Overloaded Operators ***
// ****************************


}