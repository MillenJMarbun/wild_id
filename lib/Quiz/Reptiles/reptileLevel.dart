import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

class reptileLevel extends StatefulWidget {
  @override
  _reptileLevelState createState() => _reptileLevelState();
}

class _reptileLevelState extends State<reptileLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: quizbg,
      appBar: AppBar(
        title: Text(
          "Reptile Quiz",
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
                        /*onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QuizScreen(),),);
                        },*/
                        child: Container(
                          height: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                child: Container(
                                  width: 340,
                                  height: 160,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 20, right: 20),
                                        width: 340,
                                        height: 160,
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 240,
                                  bottom: 90,
                                  child: Image.asset('assets/Quiz/lizard.png', scale: 4.5)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30,
                              child: Container(
                                width: 340,
                                height: 160,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 20, left: 20, right: 20),
                                      width: 340,
                                      height: 160,
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
                                            child: Icon(Icons.lock_outline,
                                                color: Colors.white),
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                left: 230,
                                bottom: 90,
                                child: Image.asset('assets/Quiz/tiger.png', scale: 4)),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30,
                              child: Container(
                                width: 340,
                                height: 160,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 20, left: 20, right: 20),
                                      width: 340,
                                      height: 160,
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
                                            child: Icon(Icons.lock_outline,
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                left: 240,
                                bottom: 90,
                                child: Image.asset('assets/Quiz/eleph.png', scale: 4.5)),
                          ],
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
