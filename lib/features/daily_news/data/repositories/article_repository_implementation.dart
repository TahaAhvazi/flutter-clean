import 'package:clean_news/core/resources/data_state.dart';
import 'package:clean_news/features/daily_news/data/model/article.dart';
import 'package:clean_news/features/daily_news/domain/entitites/article.dart';
import 'package:clean_news/features/daily_news/domain/repositories/article_repository.dart';

class ArticleRepositoryImplementation implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
