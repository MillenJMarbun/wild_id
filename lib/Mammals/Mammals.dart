import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Mammals/Mammalcard.dart';
import 'package:wild_id/Mammals/MammalsData.dart';

import 'MammalRead.dart';

class Mammals extends StatefulWidget {
  @override
  _MammalsState createState() => _MammalsState();
}

class _MammalsState extends State<Mammals> {
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
                          child: Text("Explore Indonesian Mammals",
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
                          child: Text("Mammals are a group of vertebrate animals constituting the class Mammalia and characterized by the presence of mammary glands which in females produce milk for feeding (nursing) their young, a neocortex (a region of the brain), fur or hair, and three middle ear bones.",
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
                                builder: (context) => MammalRead(mammal: recent),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                            child: MammalCard(mammal: recent),
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

