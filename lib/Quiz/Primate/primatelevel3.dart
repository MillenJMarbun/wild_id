import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

import '../../QuizView.dart';
import '../Quiz.dart';

class primatelevel3 extends StatefulWidget {
  @override
  _primatelevel3State createState() => _primatelevel3State();

  final int bestScore;
  primatelevel3({Key key, @required this.bestScore}) : super(key: key);
}

class _primatelevel3State extends State<primatelevel3> {

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
              "assets/Primates/sumatraorangutan2.jpg",
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
          question: "On Average how long are Orangutan's Arms?",
          rightAnswer: "2 Metres",
          wrongAnswers: [
            "3 Metres",
            "5 Metres",
            "7 Metres"
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
              "assets/Primates/sumatraorangutan2.jpg",
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
          question: "How long do baby orangutans stay with their mothers?",
          rightAnswer: "7 Years",
          wrongAnswers: [
            "1.5 Years",
            "3 Years Grams",
            "4 Years Grams"
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
              "assets/Primates/javaslowloris2.jpg",
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
          question: "On average how heavy are Javan Slow Loris?",
          rightAnswer: "565 - 687 Grams",
          wrongAnswers: [
            "350 - 550 Grams",
            "690 - 884  Grams",
            "950 - 1050 Grams"
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
              "assets/Primates/tonkeanmacaque2.jpg",
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
          question: "Which family of primates does the Tonkean Macaque belong to?",
          rightAnswer: "Cercopithecidae",
          wrongAnswers: [
            "Pitheciidae",
            "Banten",
            "Atelidae"
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
              "assets/Primates/Bekantan2.jpg",
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
          question: "On Average how much percentage does fruits and seeds take up their diet?",
          rightAnswer: "60 - 90%",
          wrongAnswers: [
            "15 - 20%",
            "25 - 50%",
            "100%"
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
        title: Text("Primate Level 3 Quiz",
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
              height: 100,
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
        .update({'primatelvl3': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}