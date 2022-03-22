import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wild_id/Constants/constants.dart';
import 'package:wild_id/MainScreen.dart';
import 'package:wild_id/Quiz/Quiz.dart';
import 'NewsTile.dart';
import 'models/article.dart';


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
  bool _loading;
  List<Article> newslist;

  @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();
    getNews();
  }

  void getNews() async {
    News news = News();
    await news.getNews();
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "wild.id",
              style:
              TextStyle(color: maincol, fontWeight: FontWeight.w600),
            ),
            Text(
              " Wildlife News",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _loading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                /// News Article
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ListView.builder(
                      itemCount: newslist.length,
                      shrinkWrap: true, //shrinkwrap = true makes size, dependant on how many content
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return NewsTile(
                          imgUrl: newslist[index].urlToImage,
                          title: newslist[index].title,
                          desc: newslist[index].description,
                          content: newslist[index].content,
                          posturl: newslist[index].articleUrl,
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

