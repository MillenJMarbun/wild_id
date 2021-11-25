import 'package:flutter/material.dart';

class POTD extends StatefulWidget {
  final int tab;
  const POTD({
    Key key,
    @required this.tab,
  }) : super(key: key);
  @override
  _POTDState createState() => _POTDState();
}

class _POTDState extends State<POTD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Picture Of The Day"),
      ),
    );
  }
}
