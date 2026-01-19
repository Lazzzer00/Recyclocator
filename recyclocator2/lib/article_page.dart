import 'package:flutter/material.dart';
import 'package:recyclocator2/article_data.dart';
import 'package:recyclocator2/article_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List<Article> _articles = []; 
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchArticles();
  }

  Future<void> _fetchArticles() async {
    final response = await http.get(
      Uri.parse("link")
    );

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);

      final articles = data.map((item) {
        return Article(
          title: item['title'],
          content: item['content'],
          excerpt: item['excerpt'],
          imageUrl: item['imageUrl']
        );
      }).toList();

      setState(() {
        _articles = articles;
        _loading = false;
      });
    }
    else {
      setState(() {
        _loading = false;
      });
    }

    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Article Page'),
        ),
        body: ListView.builder(
          itemCount: _articles.length,
          itemBuilder: (context, index) => ArticleCard(article: _articles[index]),
        ));
    }
  }
}