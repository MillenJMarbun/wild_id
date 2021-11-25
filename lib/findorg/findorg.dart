import 'package:flutter/material.dart';

class findOrg extends StatefulWidget {
  final int tab;
  const findOrg({
    Key key,
    @required this.tab,
  }) : super(key: key);
  @override
  _findOrgState createState() => _findOrgState();
}

class _findOrgState extends State<findOrg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Find Org Page"),
      ),
    );
  }
}
