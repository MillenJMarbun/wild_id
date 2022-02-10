import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Quiz/Reptiles/reptilelvl1.dart';
import 'package:wild_id/Quiz/Reptiles/reptilelvl2.dart';
import 'package:wild_id/Quiz/Reptiles/reptilelvl3.dart';
import 'package:wild_id/model/user_model.dart';

class reptileLevel extends StatefulWidget {
  @override
  _reptileLevelState createState() => _reptileLevelState();
}

class _reptileLevelState extends State<reptileLevel> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance.collection("users")
        .doc(user.uid).get().then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context)  {
    var _bestScore1 = loggedInUser.reptileslvl1;
    var _bestScore2 = loggedInUser.reptileslvl2;
    var _bestScore3 = loggedInUser.reptileslvl3;

    return Scaffold(
      backgroundColor: quizbg,
      appBar: AppBar(
        title: Text(
          "Reptiles Quiz",
          style: GoogleFonts.sora(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: mywhite,
              )),
        ),
        centerTitle: true,
        backgroundColor: quizbg,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Column(
                    children: [
                      Text(
                        "Let's Play",
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: mywhite,
                            )),
                      ),
                      Text(
                        "Choose a level to begin with",
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: mywhite,
                            )),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>reptilelvl1(bestScore: _bestScore1)));
                        },
                        child: Container(
                          height: 220,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                child: Container(
                                  width: 340,
                                  height: 180,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 20, right: 20),
                                        width: 340,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:
                                            Alignment(0.8, 0.0),
                                            colors: <Color>[
                                              /* Color(0xffdd5e89),
                                              Color(0xfff7bb97)*/
                                              Color(0xff05e6c1),
                                              Color( 0xff02aab0)
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              /*alignment: Alignment.center,*/
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  borderRadius: BorderRadius.circular(
                                                      10),
                                                  color: Colors.transparent
                                              ),
                                              child: Icon(Icons.play_arrow,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(height: 22),
                                            Text(
                                              "Level 1",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: mywhite,
                                                  )),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Easy Difficulty",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: mywhite,
                                                  )),
                                            ),
                                            SizedBox(height: 7),
                                            Text(
                                              "Highest Score: ${loggedInUser.reptileslvl1}",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: mywhite,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 240,
                                  bottom: 110,
                                  child: Image.asset('assets/Quiz/lizard.png', scale: 4.5)),
                            ],
                          ),
                        ),
                      ),

                      ///level 2
                      InkWell(
                        onTap: (){
                          if(loggedInUser.reptileslvl1 > 79){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>reptilelvl2(bestScore : _bestScore2)));
                          }
                          else{
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: new Text('Level Unlocked!'),
                                  content: new Text('You Must Score at least 80 Points in Level 1 To Unlock Level 2'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: new Text('OK'),
                                    ),
                                  ],
                                )
                            );
                          }
                        },
                        child: Container(
                          height: 220,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                child: Container(
                                  width: 340,
                                  height: 220,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 20, right: 20),
                                        width: 340,
                                        height: 190,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:
                                            Alignment(0.8, 0.0),
                                            colors: <Color>[
                                              Color(0xff36d1dc),
                                              Color(0xff5b86e5),
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              /*alignment: Alignment.center,*/
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  borderRadius: BorderRadius.circular(
                                                      10),
                                                  color: Colors.transparent
                                              ),
                                              child: Icon(Icons.play_arrow,
                                                  color: Colors.white
                                              ),
                                            ),
                                            SizedBox(height: 22),
                                            Text(
                                              "Level 2",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: mywhite,
                                                  )),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Intermediate Difficulty",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: mywhite,
                                                  )),
                                            ),
                                            SizedBox(height: 7),
                                            Text(
                                              "Highest Score: ${loggedInUser.reptileslvl2} ",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: mywhite,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 230,
                                  bottom: 110,
                                  child: Image.asset('assets/Quiz/tiger.png', scale: 4)),
                            ],
                          ),
                        ),
                      ),


                      SizedBox(height: 10),

                      ///level 3
                      InkWell(
                        onTap: (){
                          if(loggedInUser.reptileslvl2 > 79){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>reptilelvl3(bestScore : _bestScore3)));
                          }
                          else{
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: new Text('Level Unlocked!'),
                                  content: new Text('You Must Score at least 80 Points in Level 2 To Unlock Level 3'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: new Text('OK'),
                                    ),
                                  ],
                                )
                            );
                          }
                        },
                        child: Container(
                          height: 220,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                child: Container(
                                  width: 340,
                                  height: 220,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 20, right: 20),
                                        width: 340,
                                        height: 190,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:
                                            Alignment(0.8, 0.0),
                                            colors: <Color>[
                                              Color(0xff9378eb),
                                              Color(0xfffaaca8)
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              /*alignment: Alignment.center,*/
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  borderRadius: BorderRadius.circular(
                                                      10),
                                                  color: Colors.transparent
                                              ),
                                              child: Icon(Icons.play_arrow,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(height: 22),
                                            Text(
                                              "Level 3",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: mywhite,
                                                  )),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Hard Difficulty",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: mywhite,
                                                  )),
                                            ),
                                            SizedBox(height: 7),
                                            Text(
                                              "Highest Score: ${loggedInUser.reptileslvl3} ",
                                              style: GoogleFonts.sora(
                                                  textStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: mywhite,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 240,
                                  bottom: 110,
                                  child: Image.asset('assets/Quiz/eleph.png', scale: 4.5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}