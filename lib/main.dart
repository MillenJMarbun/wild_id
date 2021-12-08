import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_id/Bird/Birds.dart';
import 'package:wild_id/SignUp/Register.dart';
import 'package:wild_id/starter.dart';
import 'Constants/constants.dart';
import 'Home/HomePage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const MaterialColor kPrimaryColor = const MaterialColor(
    0xFF42bda4,
    const <int, Color>{
      50: const Color(0xFF42bda4),
      100: const Color(0xFF42bda4),
      200: const Color(0xFF42bda4),
      300: const Color(0xFF42bda4),
      400: const Color(0xFF42bda4),
      500: const Color(0xFF42bda4),
      600: const Color(0xFF42bda4),
      700: const Color(0xFF42bda4),
      800: const Color(0xFF42bda4),
      900: const Color(0xFF42bda4),
    },
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.black,
        primarySwatch: kPrimaryColor,
      ),
      home: Starter(),
    );
  }
}
