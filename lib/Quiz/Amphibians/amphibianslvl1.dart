import 'package:flutter/material.dart';

class amphibianslvl1 extends StatefulWidget {
  @override
  _amphibianslvl1State createState() => _amphibianslvl1State();
}

class _amphibianslvl1State extends State<amphibianslvl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Text("amphibians Level 1", style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
