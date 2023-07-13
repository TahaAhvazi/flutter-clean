import 'package:clean_news/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:clean_news/features/daily_news/data/repositories/article_repository_implementation.dart';
import 'package:clean_news/features/daily_news/domain/repositories/article_repository.dart';
import 'package:clean_news/features/daily_news/domain/usecases/get_article_usecase.dart';
import 'package:clean_news/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<ArticleRepository>(
      ArticleRepositoryImplementation(sl()));
  sl.registerSingleton<GetArticleUsecase>(GetArticleUsecase(sl()));
  sl.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(sl()));
}
