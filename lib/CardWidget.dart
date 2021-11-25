import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardWigdet(String txt, String cov) {
  return Card(
    elevation: 4,
    child: new Container(
      padding: EdgeInsets.only(left:10),
      height: 200,
      width: 170,
      decoration: BoxDecoration(

        image: DecorationImage(
          image: AssetImage(cov),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
        ),
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 145),
          Text("Indonesian \n$txt",
              style: GoogleFonts.sora
                (textStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
              ))
          )
        ],
      ),
    ),
  );
}