import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:wild_id/Constants/constants.dart';

class amphLeaderboard extends StatefulWidget {
  @override
  _amphLeaderboardState createState() => _amphLeaderboardState();
}

class _amphLeaderboardState extends State<amphLeaderboard> {

  @override
  Widget build(BuildContext context) {
    const trophy = const Color(0xffd67400);
    return Scaffold(
      backgroundColor: quizbg,
      appBar: AppBar(
      title: Text(
      'Amphibians Quiz 100% Completion',
      style: GoogleFonts.sora(
          textStyle: TextStyle(
            /*fontWeight: FontWeight.bold,*/
            fontSize: 18,
            color: mywhite,
          )),
    ),
    automaticallyImplyLeading: false,
    centerTitle: true,
    elevation: 0,
backgroundColor: quizbg,
    ),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection("users")
            .where("amphibianslvl3", isGreaterThan: 79)
            .get(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              Icon(Icons.emoji_events_outlined,color: Colors.yellow, size: 260),
              Text(
                "Congratulations To These Users\nFor 100% Completion",
                textAlign: TextAlign.center,
                style: GoogleFonts.sora(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: mywhite,
                    )),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: snapshot.data.docs.map(
                        (e) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            padding: EdgeInsets.all(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text((e.data() as Map)["userName"],
                                  style: GoogleFonts.sora(
                                textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: mywhite,
                                )),),
                              ],
                            )
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
