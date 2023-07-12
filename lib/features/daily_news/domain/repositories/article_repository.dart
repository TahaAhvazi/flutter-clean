import 'package:clean_news/core/resources/data_state.dart';
import 'package:clean_news/features/daily_news/domain/entitites/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
