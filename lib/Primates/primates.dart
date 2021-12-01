import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

import 'PrimateData.dart';
import 'Primatecard.dart';
import 'ReadView.dart';

class Primates extends StatefulWidget {
  @override
  _PrimatesState createState() => _PrimatesState();
}

class _PrimatesState extends State<Primates> {

  Color grenwhite = Color(0xffdedbc2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Text("Indonesian Primates",
            style: GoogleFonts.sora(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: mywhite,
                )
            )
        ),
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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:
                Alignment(0.8, 0.0),
                colors: <Color>[
                  Color(0xff434343),
                  Color(0xff000000)
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
                        builder: (context) => ReadView(primate: recent),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                    child: PrimateCard(primates: recent),
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
