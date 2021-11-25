import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Home/HomePage.dart';
import 'package:wild_id/MainScreen.dart';

import '../Constants/constants.dart';
import '../SignUp/Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Color seccol = const Color(0xFF389c8c);
  TextEditingController userNameController;
  TextEditingController passwordController;
  bool passwordVisibility1 = false;

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to cancel your Login?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Center(child: Image.asset('assets/logo2.png', fit: BoxFit.fitHeight,)),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: maincol,
                    child: Column(
                        children: [
                          Image.asset('assets/strip.png'),
                          SizedBox(height: 30,),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              controller: userNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    )
                                ),
                                hintText: 'Enter your UserName',
                                hintStyle: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: seccol,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: seccol,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: seccol,
                              ),
                              style:(
                                  GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )
                                  )
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(height: 20,),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: !passwordVisibility1,
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )
                                  ),
                                  hintText: 'Enter New Password',
                                  hintStyle: GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: seccol,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: seccol,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: seccol,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                          () => passwordVisibility1 =
                                      !passwordVisibility1,
                                    ),
                                    child: Icon(
                                      passwordVisibility1
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0x80FFFFFF),
                                      size: 22,
                                    ),
                                  )
                              ),
                              style:(
                                  GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )
                                  )
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                              child: Container(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                                  },
                                  child:Text( 'Login', style: GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      )
                                  )),
                                  style: ElevatedButton.styleFrom(
                                      primary: bgcolor
                                  ),
                                ),
                              )
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Don’t have an Account ? ",
                                style: TextStyle(color: bgcolor),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                                },
                                child: Text("Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                          )
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
