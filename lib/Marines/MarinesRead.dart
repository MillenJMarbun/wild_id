import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

import 'MarinesData.dart';

class MarinesRead extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final Marines marine;
  MarinesRead({Key key, this.marine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color2 = HexColor(marine.color);
    return Scaffold(
        backgroundColor: navy,
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage(marine.image2),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)),
                ),
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    IconButton(
                      icon: const Icon(Icons.arrow_back,color: Colors.white,size: 20,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(height: 90),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: color2,
                        ),
                        /*width: 200,*/
                        child: Text(marine.title,
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.white
                                )
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("|",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: color2
                                )
                            )
                        ),
                        Text("Description",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: mywhite
                                )
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(marine.description,
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: mywhite
                            )
                        )
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("|",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: color2
                                )
                            )
                        ),
                        Text("Habitat",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: mywhite
                                )
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(marine.habitat,
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: mywhite
                            )
                        )
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("|",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: color2
                                )
                            )
                        ),
                        Text("Diet",
                            style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: mywhite
                                )
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(marine.diet,
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: mywhite
                            )
                        )
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
