import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Home/HomePage.dart';
import 'package:wild_id/Login/Login.dart';
import 'package:wild_id/MainScreen.dart';
import 'package:wild_id/model/user_model.dart';
import '../WelcomeScreen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  TextEditingController NameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();
  bool passwordVisibility1 = false;
  bool passwordVisibility2 = false;
  Color seccol = const Color(0xFF389c8c);

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to cancel Registration?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),/*Navigator.of(context).pop(false),*/
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage())),
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
            height: 900,
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Image.asset('assets/strip.png'),
                          SizedBox(height: 30,),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              controller: NameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    )
                                ),
                                hintText: 'Enter Your Full Name',
                                hintStyle: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      fontSize: 10,
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
                                ///regular expression pattern.
                                RegExp regex = new RegExp(r'^.{5,}$');
                                if (value.isEmpty) {
                                  return ("Name cannot be Empty");
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("Enter Valid Name (Min. 5 Character)");
                                }
                                return null;
                              },
                              onSaved: (value) {
                                NameController.text = value;
                              },

                            ),
                          ),
                          SizedBox(height: 20,),
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
                              validator: (value) {
                                RegExp regex = new RegExp(r'^.{4,}$');
                                if (value.isEmpty) {
                                  return ("User Name cannot be Empty");
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("Enter Valid User Name (Min. 4 Character)");
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userNameController.text = value;
                              },
                            ),
                          ),
                          SizedBox(height: 20,),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              controller: emailController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    )
                                ),
                                hintText: 'Enter your Email Address',
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
                                if (value.isEmpty) {
                                  return ("Please Enter Your Email");
                                }
                                // reg expression for email validation
                                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please Enter a valid email");
                                }
                                return null;
                              },
                              onSaved: (value) {
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
                              // ignore: missing_return
                              validator: (value) {
                                RegExp regex = new RegExp(r'^.{6,}$');
                                if (value.isEmpty) {
                                  return ("Password is required");
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("Enter Valid Password(Min. 6 Character)");
                                }
                              },
                              onSaved: (value) {
                                passwordController.text = value;
                              },
                            ),
                          ),

                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: SizedBox(
                              width: 350,
                              child: TextFormField(
                                controller: confirmPasswordController,
                                obscureText: !passwordVisibility2,
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  labelStyle:  GoogleFonts.sora(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )
                                  ),
                                  hintText: 'Confirm password here...',
                                  hintStyle:  GoogleFonts.sora(
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
                                          () => passwordVisibility2 = !passwordVisibility2,
                                    ),
                                    child: Icon(
                                      passwordVisibility2
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0x80FFFFFF),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style:  GoogleFonts.sora(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )
                                ),
                                validator: (value) {
                                  if (confirmPasswordController.text !=
                                      passwordController.text) {
                                    return "Password don't match";
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  confirmPasswordController.text = value;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                            child: Container(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  signUp(emailController.text, passwordController.text);
                                },
                                child:Text( 'Create Account', style: GoogleFonts.sora(
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

  void signUp(String email, String password) async
  {
    if (_formKey.currentState.validate()){
      await _auth.createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {
            postDetailsToFirestore()
          }).catchError((e)
      {
        Fluttertoast.showToast(msg: e.message);
      });
    }
  }

  postDetailsToFirestore() async {
    // calling firebase firestore, user model
    // and sending those values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    User user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user.email;
    userModel.uid = user.uid;
    userModel.fullName = NameController.text;
    userModel.userName = userNameController.text;
    userModel.primatelvl1 = 0;
    userModel.primatelvl2 = 0;
    userModel.primatelvl3 = 0;
    userModel.mammalslvl1 = 0;
    userModel.mammalslvl2 = 0;
    userModel.mammalslvl3 = 0;
    userModel.birdslvl1 =0;
    userModel.birdslvl2 =0;
    userModel.birdslvl3 =0;
    userModel.reptileslvl1 =0;
    userModel.reptileslvl2 =0;
    userModel.reptileslvl3 =0;
    userModel.amphibianslvl1 =0;
    userModel.amphibianslvl2 =0;
    userModel.amphibianslvl3 =0;
    userModel.marinelvl1 =0;
    userModel.marinelvl2 =0;
    userModel.marinelvl3 =0;


    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account Registered ");
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => MainScreen()), (route) => false);
  }


}
