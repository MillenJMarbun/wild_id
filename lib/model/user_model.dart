class UserModel{
  String uid;
  String email;
  String fullName;
  String userName;

  UserModel({this.uid,this.email,this.fullName,this.userName});

  //receive data from server
  factory UserModel.fromMap(map){
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      fullName: map['fullName'],
      userName: map['userName'],
    );
  }

  //sending data to server
  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'userName': userName,
    };
  }
}
