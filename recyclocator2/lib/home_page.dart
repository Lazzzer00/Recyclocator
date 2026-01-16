import 'package:flutter/material.dart';
import 'package:recyclocator3/article_data.dart';
import 'package:recyclocator3/article_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder:(context, index) => ArticleCard(article: articles[index]),
      ));
  }
}