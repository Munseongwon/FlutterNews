class ArticlesListModel {
  List<dynamic>? articles;
  ArticlesListModel({
    this.articles,
  });

  factory ArticlesListModel.fromMap(Map<String, dynamic> map) {
    return ArticlesListModel(
      articles: map['articles'],
    );
  }
}
