import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/Login/Login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController NameController;
  TextEditingController emailController;
  TextEditingController userNameController;
  TextEditingController passwordController;
  TextEditingController confirmPasswordController;
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
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Login())),
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
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                          child: Container(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              /*  setState(() => _loadingButton1 = true);
                                try {
                                  if (passwordController.text !=
                                      confirmPasswordController.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          "Passwords don't match!",
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  final user = await createAccountWithEmail(
                                    context,
                                    emailTextController.text,
                                    passwordTextController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }
                                  final usersCreateData = createUsersRecordData(
                                    displayName: fullNameController.text,
                                  );
                                  await UsersRecord.collection.doc(user.uid).update(usersCreateData);
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NavBarPage(initialPage: 'myTasks'),
                                    ),
                                        (r) => false,
                                  );
                                } finally {
                                  setState(() => _loadingButton1 = false);
                                }
                              },*/
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
