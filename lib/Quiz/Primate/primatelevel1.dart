import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Quiz/Quiz.dart';

import '../../QuizView.dart';

class primatelvl1 extends StatefulWidget {
  @override
  _primatelvl1State createState() => _primatelvl1State();
  final int bestScore;
  primatelvl1({Key key, @required this.bestScore}) : super(key: key);
}

class _primatelvl1State extends State<primatelvl1> {
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
        title: Text("Primate Level 1 Quiz",
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
                   "assets/Primates/sumatraorangutan2.jpg",
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
               question: "What does the word Orangutan mean in Indonesian / Malay?",
               rightAnswer: "Person of the forest",
               wrongAnswers: [
                 "King of the jungle",
                 "Dangerous Beast",
                 "Great Ape"
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
                   "assets/Primates/javanlangur2.jpg",
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
               question: "What is the name of the animal pictured below?",
               rightAnswer: "East Javan Langur",
               wrongAnswers: [
                 "Long Tail Macaque",
                 "Tonkean Macaque",
                 "Javan Slow Loris"
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
                   "assets/Primates/Bekantan2.jpg",
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
               question: "What does the Proboscis Monkey Diet consists of?",
               rightAnswer: "All Correct",
               wrongAnswers: [
                 "Leaves",
                 "seeds",
                 "Fruits"
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
                   "assets/Primates/thomaslangur2.jpg",
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
               question: "Where are Thomas Langurs endemic to?",
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
                   "assets/Primates/pygmytarsier2.jpg",
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
               question: "What year was the Pygmy Tarsier was encountered after it was believed to be extinct?",
               rightAnswer: "2000",
               wrongAnswers: [
                 "2007",
                 "1990",
                 "2015"
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
             height: 90,
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
        .update({'primatelvl1': score})
        .then((value) => print("Score Updated"))
        .catchError((error) => print("Failed to update Score: $error"));
  }

}
