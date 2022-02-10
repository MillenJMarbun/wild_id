import 'package:http/http.dart' as http;
import 'dart:convert';

class Article{
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;

  Article({this.title,this.description,this.author,this.content,this.publshedAt,
    this.urlToImage, this.articleUrl});
}

class News {
  List<Article> news  = [];
  Future<void> getNews() async{
    var url = Uri.parse('https://laurenbehringer.github.io/news.json');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){
        if(element['urlToImage'] != null && element['description'] != null){
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }

      });
    }
  }
}
