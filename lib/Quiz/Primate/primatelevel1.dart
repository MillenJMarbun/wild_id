import 'package:flutter/material.dart';

class primatelvl1 extends StatefulWidget {
  @override
  _primatelvl1State createState() => _primatelvl1State();
}

class _primatelvl1State extends State<primatelvl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
       child: Center(
         child: Text("Primate Level 1", style: TextStyle(fontSize: 50),),
       ),
      ),
    );
  }
}
