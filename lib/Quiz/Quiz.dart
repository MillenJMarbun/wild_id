import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

import 'level.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitegrey,
     /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: new Text(
          'wild.id Wildlife Quiz',
          style: TextStyle(color: maincol),
        ),
      ),*/
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             /* SizedBox(height: 10),*/
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                          ),
                        color: maincol,
                      ),
                      height: 200,
                      child: Center(
                        child: Text("wild.id Wildlife Quiz", style: GoogleFonts.sora(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            )
                        ),),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 150,
                      child: Container(
                        height: 200,
                        width: 340,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: navy,
                        ),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 5, right: 25),
                            child: Image.asset('assets/questionbanner.png', height: 120,width: 120,)
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              width: 170,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Text("Learn &\nPlay", style: GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      )
                                  ),),
                                  SizedBox(height: 20,),
                                  Flexible(
                                    child: Text("Apply Your Learning and try out our quiz game. Unlock all the levels today! ", style: GoogleFonts.sora(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.grey[300],
                                        )
                                    ),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                    Positioned(
                        left: 285,
                        top:95,
                        child: Image.asset('assets/hat.png', height: 130,width: 130,)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Quiz Categories", style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[800],
                        )
                    ),),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Level(),
                              ),
                            );
                          },
                          child: quizCard(
                              'Primates', 'assets/Drawer/primate.png'),
                        ),

                        new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Level(),
                              ),
                            );
                          },
                          child: quizCard(
                              'Mammals', 'assets/Drawer/mammals.png'),
                        ),

                        new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Level(),
                              ),
                            );
                          },
                          child: quizCard(
                              'Birds', 'assets/Drawer/bird.png'),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Level(),
                              ),
                            );
                          },
                          child: quizCard(
                              'Reptiles', 'assets/Drawer/reptiles.png'),
                        ),

                        new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Level(),
                              ),
                            );
                          },
                          child: quizCard(
                              'Amphibians', 'assets/Drawer/amphibians.png'),
                        ),

                        new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Level(),
                              ),
                            );
                          },
                          child: quizCard(
                              'Marine', 'assets/Drawer/marine.png'),
                        ),

                      ],
                    )

                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: maincol,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

Widget quizCard(String txt, String img, {Color color = Colors.white}) {
  return new Container(
    height: 120,
    width: 105,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20)
    ),
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        Image.asset(img, height: 50, width: 50),
        SizedBox(height: 20),
        Text(txt, style: GoogleFonts.sora(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.grey[800],
            )
        ),),
      ],
    ),
  );
}
