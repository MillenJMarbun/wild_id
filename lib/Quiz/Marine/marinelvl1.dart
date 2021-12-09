import 'package:flutter/material.dart';

class marinelvl1 extends StatefulWidget {
  @override
  _marinelvl1State createState() => _marinelvl1State();
}

class _marinelvl1State extends State<marinelvl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Text("Marine Level 1", style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
