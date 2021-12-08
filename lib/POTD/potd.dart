import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';

class POTD extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final date;
  final explanation;
  final title;
  final url;


  POTD({
    @required this.date,
    @required this.explanation,
    @required this.title,
    @required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  mywhite,
        appBar: AppBar(
          title: Text('wild.id Wildlife Picture Of The Day', style: GoogleFonts.sora(
              textStyle: TextStyle(
                /*fontWeight: FontWeight.bold,*/
                fontSize: 18,
                color: mywhite,
              )),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    height: 300,
                    width: 400
                ),
              ),
              SizedBox(height: 40),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(title, style: TextStyle(color: maincol, fontSize:25, fontWeight: FontWeight.bold))),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                child:  Text(explanation, style: TextStyle(color: Colors.black),), ///'${explanation.toString()}'
              ),
              SizedBox(height: 40),
            ],
          ),
        )
    );
  }
}
