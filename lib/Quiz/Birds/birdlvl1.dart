import 'package:flutter/material.dart';

class birdslvl1 extends StatefulWidget {
  @override
  _birdslvl1State createState() => _birdslvl1State();
}

class _birdslvl1State extends State<birdslvl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Text("Birds Level 1", style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
