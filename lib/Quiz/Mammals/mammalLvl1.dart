import 'package:flutter/material.dart';

class mammallvl1 extends StatefulWidget {
  @override
  _mammallvl1State createState() => _mammallvl1State();
}

class _mammallvl1State extends State<mammallvl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Text("Mammal Level 1", style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
