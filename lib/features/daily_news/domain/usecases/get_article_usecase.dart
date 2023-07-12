import 'package:clean_news/core/constants/usecase.dart';
import 'package:clean_news/core/resources/data_state.dart';
import 'package:clean_news/features/daily_news/domain/entitites/article.dart';
import 'package:clean_news/features/daily_news/domain/repositories/article_repository.dart';

class GetArticleUsecase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUsecase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
