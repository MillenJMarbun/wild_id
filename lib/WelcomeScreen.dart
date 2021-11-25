import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constants/constants.dart';
import 'Login/Login.dart';
import 'SignUp/Register.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: bgcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/logo.png', scale: 1.5,)
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 57,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                          },
                          child: Text("Register",
                              style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  )
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      height: 57,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: mywhite
                          ),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Login()));
                          },
                          child: Text("Login",
                              style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: maincol,
                                  )
                              )
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset('assets/bottom.png',)
            ],
          ),
        ),
      ),
    );
  }
}
