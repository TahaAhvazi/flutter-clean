import 'package:clean_news/features/daily_news/domain/entitites/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    int? id,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  });

  ///Create the JSON method for our model in this way ....
  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      // id: map['id'] ?? "",
      author: map['author'] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
      url: map["url"] ?? "",
      urlToImage: map["urlToImage"] ?? "",
      publishedAt: map["publishedAt"] ?? "",
      content: map["content"] ?? "",
    );
  }
}
