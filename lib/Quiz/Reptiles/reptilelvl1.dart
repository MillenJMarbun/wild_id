import 'package:flutter/material.dart';

class reptilelvl1 extends StatefulWidget {
  @override
  _reptilelvl1State createState() => _reptilelvl1State();
}

class _reptilelvl1State extends State<reptilelvl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Text("Reptile Level 1", style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
