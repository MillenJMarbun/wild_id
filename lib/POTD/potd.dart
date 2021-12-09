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
              Container(
                height: 350,
                width: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: ClipRRect(
                  child: Image.network(
                    url,
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: maincol,
                          )),
                      ),
                      SizedBox(height: 5,),
                      Text(date,
                        style: GoogleFonts.sora(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            )),
                      ),
                    ],
                  )),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child:  Text(explanation,  style: GoogleFonts.sora(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ))), ///'${explanation.toString()}'
              ),
              SizedBox(height: 40),
            ],
          ),
        )
    );
  }
}
