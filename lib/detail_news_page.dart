import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/news_item.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({Key? key, required this.article}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail News Page")),
      body: Column(children: [
        Image.network(article.urlToImage),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(article.content),
        ),
        Text(article.publishedAt.toString())
      ]),
    );
  }
}
