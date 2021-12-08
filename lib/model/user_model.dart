class UserModel{
  String uid;
  String email;
  String fullName;
  String userName;
  int mammallvl1;

  UserModel({this.uid,this.email,this.fullName,this.userName, this.mammallvl1});

  //receive data from server
  factory UserModel.fromMap(map){
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      fullName: map['fullName'],
      userName: map['userName'],
      mammallvl1: map['mammallvl1'],
    );
  }

  //sending data to server
  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'userName': userName,
      'mammallvl1': mammallvl1,
    };
  }
}
