import 'dart:convert';
import 'package:http/http.dart';
import '../model/article.dart';

class ApiService {
  final endpoint =
      "https://newsapi.org/v2/everything?q=apple&from=2023-05-06&to=2023-05-06&sortBy=popularity&apiKey=5d18ed8225034f1bb7b0ebce3b80aa05";
  Future<List<Article>> getArticle() async {
    Response response = await get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json["articles"];
      List<Article> article =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return article;
    } else {
      throw "Data not found";
    }
  }
}
