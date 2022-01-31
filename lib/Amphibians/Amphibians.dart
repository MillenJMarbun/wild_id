import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Amphibians/AmphibiansCard.dart';
import 'package:wild_id/Amphibians/AmphibiansData.dart';
import 'package:wild_id/Amphibians/AmphibiansRead.dart';
import 'package:wild_id/Constants/constants.dart';

class Amphibians extends StatefulWidget {
  @override
  _AmphibiansState createState() => _AmphibiansState();
}

class _AmphibiansState extends State<Amphibians> {
  Color grenwhite = Color(0xffdedbc2);
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
                          child: Text("Explore Indonesian Amphibians",
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
                          child: Text("Amphibians are a diverse and exciting class of animals that include frogs, toads, salamanders, newts and caecilians. Amphibians are vertebrate animals, amphibians became the first vertebrates to live on land.",
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
                                builder: (context) => AmphibianRead(amphibian: recent),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                            child: AmphibiansCard(amphibian: recent),
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