import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

class Primates extends StatefulWidget {
  @override
  _PrimatesState createState() => _PrimatesState();
}

class _PrimatesState extends State<Primates> {

  Color grenwhite = Color(0xffdedbc2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincol,
      /*appBar: AppBar(
       *//* title: Text("Indonesian Primates",
            style: GoogleFonts.sora(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: mywhite,
                )
            )
        ),*//*
        elevation: 0,
        backgroundColor: maincol,
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: mywhite),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              height: 299,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/camo2.jpg"),
                  fit: BoxFit.cover,
                ),
                color: maincol,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,color: Colors.white,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 40),
                    child: Text("Explore Indonesian Primates",
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: mywhite
                            )
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text("A primate is any member of the biological order Primates, the group that contains all the species commonly related to the lemurs, monkeys, and apes",
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[300]
                            )
                        )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                /*image: DecorationImage(
                  image: AssetImage("assets/camo2.jpg"),
                  fit: BoxFit.cover,
                ),*/
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child:Container(
                height: 300,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
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
                                          "Orangutan",
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
                              bottom: 100,
                              child: Image.asset('assets/Quiz/lizard.png', scale: 4.5)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}
