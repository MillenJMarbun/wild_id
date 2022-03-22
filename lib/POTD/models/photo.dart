import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class Photo{
  final date;
  final explanation;
  final title;
  final url;

  Photo({
    @required this.date,
    @required this.explanation,
    @required this.title,
    @required this.url,
  });

}

class Images {
  List<Photo> image  = [];
  Future<void> getPhoto() async{
    var url = Uri.parse('https://laurenbehringer.github.io/potd.json');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body); //jsonDecode = Parses the string and returns the resulting Json object.
    if(jsonData['status'] == "ok"){
      jsonData["photo"].forEach((element){
          Photo photo = Photo(
            date: element['date'],
            explanation: element['explanation'],
            title: element['title'],
            url: element['url'],
          );
          image.add(photo);
      });
    }
  }
}


