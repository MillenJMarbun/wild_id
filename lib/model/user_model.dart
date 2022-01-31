class UserModel{
  String uid;
  String email;
  String fullName;
  String userName;
  int primatelvl1;
  int primatelvl2;
  int primatelvl3;
  int mammalslvl1;
  int mammalslvl2;
  int mammalslvl3;
  int birdslvl1;
  int birdslvl2;
  int birdslvl3;
  int reptileslvl1;
  int reptileslvl2;
  int reptileslvl3;
  int amphibianslvl1;
  int amphibianslvl2;
  int amphibianslvl3;
  int marinelvl1;
  int marinelvl2;
  int marinelvl3;

  UserModel({
    this.uid,
    this.email,
    this.fullName,
    this.userName,
    this.primatelvl1,
    this.primatelvl2,
    this.primatelvl3,
    this.mammalslvl1,
    this.mammalslvl2,
    this.mammalslvl3,
    this.birdslvl1,
    this.birdslvl2,
    this.birdslvl3,
    this.reptileslvl1,
    this.reptileslvl2,
    this.reptileslvl3,
    this.amphibianslvl1,
    this.amphibianslvl2,
    this.amphibianslvl3,
    this.marinelvl1,
    this.marinelvl2,
    this.marinelvl3
  });

  //receive data from server
  factory UserModel.fromMap(map){
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      fullName: map['fullName'],
      userName: map['userName'],
      primatelvl1: map['primatelvl1'],
      primatelvl2: map['primatelvl2'],
      primatelvl3: map['primatelvl3'],
      mammalslvl1: map['mammalslvl1'],
      mammalslvl2: map['mammalslvl2'],
      mammalslvl3: map['mammalslvl3'],
      birdslvl1: map['birdslvl1'],
      birdslvl2: map['birdslvl2'],
      birdslvl3: map['birdslvl3'],
      reptileslvl1: map['reptileslvl1'],
      reptileslvl2: map['reptileslvl2'],
      reptileslvl3: map['reptileslvl3'],
      amphibianslvl1: map['amphibianslvl1'],
      amphibianslvl2: map['amphibianslvl2'],
      amphibianslvl3: map['amphibianslvl3'],
      marinelvl1: map['marinelvl1'],
      marinelvl2: map['marinelvl2'],
      marinelvl3: map['marinelvl3'],
    );
  }

  //sending data to server
  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'userName': userName,
      'primatelvl1': primatelvl1,
      'primatelvl2': primatelvl2,
      'primatelvl3': primatelvl3,
      'mammalslvl1': mammalslvl1,
      'mammalslvl2': mammalslvl2,
      'mammalslvl3': mammalslvl3,
      'birdslvl1': birdslvl1,
      'birdslvl2': birdslvl2,
      'birdslvl3': birdslvl3,
      'reptileslvl1': reptileslvl1,
      'reptileslvl2': reptileslvl2,
      'reptileslvl3': reptileslvl3,
      'amphibianslvl1': amphibianslvl1,
      'amphibianslvl2': amphibianslvl2,
      'amphibianslvl3': amphibianslvl3,
      'marinelvl1': marinelvl1,
      'marinelvl2': marinelvl2,
      'marinelvl3': marinelvl3,
    };
  }
}
