// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:newsapp/model/article_model.dart';
import 'package:newsapp/model/articles_list_model.dart';
import 'package:newsapp/repository/abstract_class_repository.dart';
import 'package:http/http.dart' as http;

class NewsApi extends ClassRepository {
  // put my news.org API key here
  var keyApi = "b3b2f5f7cf6f4d1283d81c4ae2fb442c";

  @override
  Future<List<ArticleModel>> getAllNews() async {
    try {
      var url =
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=$keyApi";
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ArticlesListModel articles = ArticlesListModel.fromMap(jsonData);
        List<ArticleModel> articlesListModel =
            articles.articles!.map((e) => ArticleModel.fromMap(e)).toList();
        return articlesListModel;
      } else {
        // here shacked number status code
        print("status code#Seongwon = ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
    throw Exception("Here Seongwon Exception Code Status");
  }

  @override
  Future<List<ArticleModel>> getCategory(String category) async {
    try {
      var url =
          "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$keyApi";
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ArticlesListModel articles = ArticlesListModel.fromMap(jsonData);
        List<ArticleModel> articlesListModel =
            articles.articles!.map((e) => ArticleModel.fromMap(e)).toList();
        return articlesListModel;
      } else {
        print("status code#Seongwon# = ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
    throw Exception("Here Seongwon Exception Code Status");
  }
}
