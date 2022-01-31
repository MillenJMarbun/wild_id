import 'package:http/http.dart' as http;
import 'dart:convert';


class ISCPInfo{
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;

  ISCPInfo({this.title,this.description,this.author,this.content,this.publshedAt,
    this.urlToImage, this.articleUrl});
}

class ISCP {
  List<ISCPInfo> updates  = [];
  Future<void> getISCPUpdate() async{
    var url = Uri.parse('https://laurenbehringer.github.io/iscp.json');
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ISCPInfo status = ISCPInfo(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          updates.add(status);
        }

      });
    }
  }
}
