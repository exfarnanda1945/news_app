import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/news_item.dart';

class Service {
  static Future<List<Article>> list() async {
    const url =
        "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=f044de69086e45198f8406be2094a229";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final responseBody = jsonDecode(response.body);
      final result = responseBody["articles"] as List;
      final listArticle = result.map((json) => Article.fromJson(json)).toList();

      return listArticle;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
