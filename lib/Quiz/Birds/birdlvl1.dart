import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import '../../QuizView.dart';

class birdslvl1 extends StatefulWidget {
  @override
  _birdslvl1State createState() => _birdslvl1State();

  final int bestScore;
  birdslvl1({Key key, @required this.bestScore}) : super(key: key);

}

class _birdslvl1State extends State<birdslvl1> {

  Color mainColor = Color(0xff2e344c);
  Color tealcol = Color(0xff146986);
  var score = 0;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final Questions = [
      ///question 1
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Birds/cendrawasih2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "What is the Indonesian name of this species pictured below?",
          rightAnswer: "Cendrawasih",
          wrongAnswers: [
            "Pleci",
            "Jalak",
            "Kasuari"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 2
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Birds/javahawkeagle2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "Where does the hawk eagle native to?",
          rightAnswer: "Java",
          wrongAnswers: [
            "Sumatra",
            "Borneo",
            "Sulawesi"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 3
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Birds/Bali-Minah.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "On Average what is the length of the Bali Myna?",
          rightAnswer: "25cm",
          wrongAnswers: [
            "10cm",
            "40cm",
            "50cm"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 4
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Birds/sumatralaughingthrush.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "Where is the Laughing Thrush endemic to?",
          rightAnswer: "Sumatra",
          wrongAnswers: [
            "Sulawesi",
            "Bali",
            "Borneo"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),


      ///question 5
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: QuizView(
          image: Container(
            width: 200,
            height: 150,
            child: Image.asset(
              "assets/Birds/greathornbill.jpg",
              fit: BoxFit.cover,
            ),
          ),
          showCorrect: true,
          tagBackgroundColor: mainColor,
          tagColor: Colors.white,
          questionTag: "",
          answerColor: Colors.white,
          answerBackgroundColor: tealcol,
          questionColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          width: 400,
          height: 700,
          question: "How many species of hornbills are only found in Indonesia in the world?",
          rightAnswer: "3",
          wrongAnswers: [
            "5",
            "1",
            "8"
          ],
          onRightAnswer: () {
            score += 20;
          },
          onWrongAnswer: (){},
        ),
      ),
    ];
    Questions.shuffle();

    return Scaffold(
      backgroundColor: quizbg,
      appBar: AppBar(
        title: Text("Birds Level 1 Quiz",
          style:(
              GoogleFonts.sora(
                  textStyle: TextStyle(
                    color: Colors.white,
                  )
              )
          ),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: quizbg,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                ]..addAll(Questions),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300,
                          color: mainColor,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Text('Your Score',
                                    style: TextStyle(color: Colors.white, fontSize: 30)
                                ),
                                SizedBox(height: 50,),
                                Text("$score",
                                    style: TextStyle(color: Colors.white, fontSize: 50)
                                ),
                                Spacer(),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 65,
                                  child: ElevatedButton(
                                      child: const Text('Finish'),
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Quiz()),
                                            ModalRoute.withName("/")
                                        );
                                      }
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    if (score > widget.bestScore){
                      updateUser();
                    }
                  },
                  child: Text("Finish", style: GoogleFonts.sora(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      )
                  ),)),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> updateUser() {
    User user = _auth.currentUser;
    return users
        .doc(user.uid)
        .update({'birdslvl1': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}
