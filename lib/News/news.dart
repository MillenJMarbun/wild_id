import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final int tab;
  const NewsPage({
    Key key,
    @required this.tab,
  }) : super(key: key);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("News Page"),
      ),
    );
  }
}
