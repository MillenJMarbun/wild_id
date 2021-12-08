import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

  final _formKey = GlobalKey<FormState>();
  Color seccol = const Color(0xFF389c8c);
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool passwordVisibility1 = false;
  // string for displaying the error Message
  String errorMessage;

  //firebase
  final _auth = FirebaseAuth.instance;



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
                  height: 240,
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                          children: [
                            Image.asset('assets/strip.png'),
                            SizedBox(height: 30,),
                            SizedBox(
                              width: 350,
                              child: TextFormField(
                                controller: emailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  errorStyle: GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      )
                                  ),
                                  labelText: 'Email',
                                  labelStyle: GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )
                                  ),
                                  hintText: 'Enter your Email',
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
                                validator: (value) {
                                  if(value.isEmpty) {
                                    return ("Please Enter Your Email");
                                  }
                                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return ("Please Enter a valid email");
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  emailController.text = value;
                                },
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
                                    errorStyle: GoogleFonts.sora(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                        )
                                    ),
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
                                validator: (value) {
                                  RegExp regex = new RegExp(r'^.{6,}$');
                                  if (value.isEmpty) {
                                    return ("Password is required for login");
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Enter Valid Password(Min. 6 Character)");
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  passwordController.text = value;
                                },
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                                child: Container(
                                  width: 200,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                   signIn(emailController.text, passwordController.text);
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void signIn(String email, String password) async{
    if(_formKey.currentState.validate())
    {
      await _auth.signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
            Fluttertoast.showToast(msg: "Login Success"),
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen())),
      
          }).catchError((e){
            Fluttertoast.showToast(msg: e.message);
      });


    }
  }
  }