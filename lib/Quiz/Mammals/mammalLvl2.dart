import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import '../../QuizView.dart';


class mammallvl2 extends StatefulWidget {
  @override
  _mammallvl2State createState() => _mammallvl2State();
  final int bestScore;
  mammallvl2({Key key, @required this.bestScore}) : super(key: key);
}

class _mammallvl2State extends State<mammallvl2> {
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
              "assets/Mammals/javarhino2.jpg",
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
          question: "How long does a mother Javan rhinoceros suckle her young?",
          rightAnswer: "1 - 2 Years",
          wrongAnswers: [
            "6 Months",
            "3 Years",
            "2.5 Years"
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
              "assets/Mammals/sumatrantiger2.jpg",
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
          question: "On Average how long are Adult Sumatran Tigers?",
          rightAnswer: "2.2 to 2.55 m",
          wrongAnswers: [
            "1.2 to 1.55 m",
            "1.5 to 2.1 m",
            "3 to 4.11 m kg"
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
              "assets/Mammals/linsang2.jpg",
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
          question: "What is the Banded Linsang Diet?",
          rightAnswer: "Carnivore",
          wrongAnswers: [
            "Insetivore",
            "Herbivore",
            "Omnivore"
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
              "assets/Mammals/tapir2.jpg",
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
          question: "What is the current Conservation Status of the Malayan Tapir?",
          rightAnswer: "Endangered",
          wrongAnswers: [
            "Near Threatened",
            "Critically Endangered",
            "Vulnerable"
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
              "assets/Mammals/babirusa2.jpg",
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
          question: "Which of these locations are Babirusa native to?",
          rightAnswer: "Sulawesi",
          wrongAnswers: [
            "Sumatra",
            "Java",
            "Papua"
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
        title: Text("Mammals Level 2 Quiz",
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
        .update({'mammalslvl2': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}

