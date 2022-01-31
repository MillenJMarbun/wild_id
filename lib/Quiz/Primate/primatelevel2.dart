import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

import '../../QuizView.dart';
import '../Quiz.dart';

class primatelvl2 extends StatefulWidget {
  @override
  _primatelvl2State createState() => _primatelvl2State();

  final int bestScore;
  primatelvl2({Key key, @required this.bestScore}) : super(key: key);
}

class _primatelvl2State extends State<primatelvl2> {
  Color mainColor = Color(0xff2e344c);
  Color tealcol = Color(0xff146986);
  var score = 0;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: quizbg,
      appBar: AppBar(
        title: Text("Primate Level 2 Quiz",
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

            ///question 1
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: QuizView(
                image: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset(
                    "assets/Primates/siamang2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                showCorrect: true,
                tagBackgroundColor: mainColor,
                tagColor: Colors.white,
                questionTag: "Question 1",
                answerColor: Colors.white,
                answerBackgroundColor: tealcol,
                questionColor: Colors.white,
                backgroundColor: Colors.deepOrange,
                width: 400,
                height: 700,
                question: "What is the major food source of the Indonesian Siamang?",
                rightAnswer: "Fruits",
                wrongAnswers: [
                  "Insects",
                  "Small Amphibians",
                  "Tree Leaves"
                ],
                onRightAnswer: () {
                  setState(() {
                    score += 20;
                  });
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
                    "assets/Primates/pygmytarsier2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                showCorrect: true,
                tagBackgroundColor: mainColor,
                tagColor: Colors.white,
                questionTag: "Question 2",
                answerColor: Colors.white,
                answerBackgroundColor: tealcol,
                questionColor: Colors.white,
                backgroundColor: Colors.deepOrange,
                width: 400,
                height: 700,
                question: "How heavy does an average adult pygmy tarsier weigh?",
                rightAnswer: "57 Grams",
                wrongAnswers: [
                  "105 Grams",
                  "30 Grams",
                  "200 Grams"
                ],
                onRightAnswer: () {
                  setState(() {
                    score += 20;
                  });
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
                    "assets/Primates/silvergib2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                showCorrect: true,
                tagBackgroundColor: mainColor,
                tagColor: Colors.white,
                questionTag: "Question 3",
                answerColor: Colors.white,
                answerBackgroundColor: tealcol,
                questionColor: Colors.white,
                backgroundColor: Colors.deepOrange,
                width: 400,
                height: 700,
                question: "On average how long does it take for a female Silver Gibbon to give birth?",
                rightAnswer: "3 years",
                wrongAnswers: [
                  "18 Months",
                  "6 Months",
                  "2 Years"
                ],
                onRightAnswer: () {
                  setState(() {
                    score += 20;
                  });
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
                    "assets/Primates/pigtailedlangur2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                showCorrect: true,
                tagBackgroundColor: mainColor,
                tagColor: Colors.white,
                questionTag: "Question 4",
                answerColor: Colors.white,
                answerBackgroundColor: tealcol,
                questionColor: Colors.white,
                backgroundColor: Colors.deepOrange,
                width: 400,
                height: 700,
                question: "Where are Pig Tailed Langurs endemic to?",
                rightAnswer: "Sumatra",
                wrongAnswers: [
                  "Sulawesi",
                  "Banten",
                  "Borneo"
                ],
                onRightAnswer: () {
                  setState(() {
                    score += 20;
                  });
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
                    "assets/Primates/Bekantan2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                showCorrect: true,
                tagBackgroundColor: mainColor,
                tagColor: Colors.white,
                questionTag: "Question 5",
                answerColor: Colors.white,
                answerBackgroundColor: tealcol,
                questionColor: Colors.white,
                backgroundColor: Colors.deepOrange,
                width: 400,
                height: 700,
                question: "On Average how large can a Proboscis Monkey Head To Body Length Grow up to?",
                rightAnswer: "65 - 76 CM",
                wrongAnswers: [
                  "30 -  60 CM",
                  "100 - 200 CM",
                  "200 - 500 CM"
                ],
                onRightAnswer: () {
                  setState(() {
                    score += 20;
                  });
                },
                onWrongAnswer: (){},
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
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
                    });
                  },
                  child: Text("Finish")),
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
        .update({'primatelvl2': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}