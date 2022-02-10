import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import '../../QuizView.dart';

class amphibianslvl1 extends StatefulWidget {
  @override
  _amphibianslvl1State createState() => _amphibianslvl1State();

  final int bestScore;
  amphibianslvl1({Key key, @required this.bestScore}) : super(key: key);
}

class _amphibianslvl1State extends State<amphibianslvl1> {

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
              "assets/Amphibians/bleedingtoad2.jpg",
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
          question: "What is the name of this animal pictured below?",
          rightAnswer: "Bleeding Toad",
          wrongAnswers: [
            "Nyctixalus Pictus",
            "Anosia Minuta",
            "Ansonia Leptopus"
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
              "assets/Amphibians/bleedingtoad2.jpg",
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
          question: "Where is the bleeding toad native to?",
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
              "assets/Amphibians/nyctixaluspictus2.jpg",
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
          question: "What is another commonly known name for the Nyctixalus Pictus?",
          rightAnswer: "Cinnamon Frog",
          wrongAnswers: [
            "Fire Frog",
            "Yellow Tree Frog",
            "Blood Frog"
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
              "assets/Amphibians/ansoniaminuta2.jpg",
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
          question: "What region is the Ansonia Minuta endemic to?",
          rightAnswer: "Borneo",
          wrongAnswers: [
            "Sulawesi",
            "Bali",
            "Sumatra"
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
              "assets/Amphibians/longnose2.jpg",
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
          question: "how long is the average Longnose Frog?",
          rightAnswer: "100-120mm",
          wrongAnswers: [
            "50-80mm",
            "200-220mm",
            "150-180mm"
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
        title: Text("Amphibians Level 1 Quiz",
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
        .update({'amphibianslvl1': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}
