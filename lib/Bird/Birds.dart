import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'BirdCard.dart';
import 'BirdData.dart';
import 'BirdsRead.dart';

class Birds extends StatefulWidget {
  @override
  _BirdsState createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                    height:300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      /* borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),*/
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
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          child: Text("Explore Indonesian Birds",
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
                          child: Text("Birds are a group of warm-blooded vertebrates constituting the class Aves, characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton",
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
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end:
                        Alignment(0.8, 0.0),
                        colors: <Color>[
                          Color(0xff233329),
                          Color(0xff63d471)
                        ],
                      ),
                      /*color: maincol*/
                    ),
                    child: ListView.builder(
                      itemCount: recentList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var recent = recentList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BirdRead(birds: recent),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                            child: BirdCard(bird: recent),
                          ),
                        );
                      },
                    ),
                  )
                ]
            )
        )
    );
  }
}