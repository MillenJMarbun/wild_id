import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wild_id/POTD/potd.dart';

class AnimalInfo{
  final date;
  final explanation;
  final title;
  final url;

  AnimalInfo({
    @required this.date,
    @required this.explanation,
    @required this.title,
    @required this.url,
  });

  factory AnimalInfo.fromJson(Map<String, dynamic> json){
    return AnimalInfo(
      date: json['date'],
      explanation: json['explanation'],
      title: json['title'],
      url: json['url'],

    );
  }
}


Future<AnimalInfo> fetchAnimal() async {
  final requestUrl = "https://api.jsonbin.io/b/61b053ef0ddbee6f8b1952a9/4";
  final response = await http.get(Uri.parse(requestUrl));

  if (response.statusCode == 200) {
    return AnimalInfo.fromJson(jsonDecode(response.body));
  }  else{
    throw Exception('error loading request URL info.');
  }
}



class AnimalPic extends StatefulWidget {
  final int tab;
  const AnimalPic({
    Key key,
    @required this.tab,
  }) : super(key: key);
  @override
  _AnimalPicState createState() => _AnimalPicState();
}

class _AnimalPicState extends State<AnimalPic> {

  Future<AnimalInfo> futureAnimal;
  @override
  void initState(){
    super.initState();
    futureAnimal = fetchAnimal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: FutureBuilder<AnimalInfo>(
            future: futureAnimal,
            builder: (context, snapshot){
              if(snapshot.hasData){
                return POTD(
                  date: snapshot.data.date,
                  explanation: snapshot.data.explanation,
                  title: snapshot.data.title,
                  url: snapshot.data.url,
                );
              }/*else if (snapshot.hasError){
                return Center(
                  child: Text("${snapshot.error}"),
                );
              }*/
              return Center(
                child: CircularProgressIndicator(),
              );
            }
        )
    );
  }
}
