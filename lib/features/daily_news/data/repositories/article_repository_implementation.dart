import 'dart:io';

import 'package:clean_news/core/constants/constants.dart';
import 'package:clean_news/core/resources/data_state.dart';
import 'package:clean_news/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:clean_news/features/daily_news/data/model/article.dart';
import 'package:clean_news/features/daily_news/domain/entitites/article.dart';
import 'package:clean_news/features/daily_news/domain/repositories/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImplementation implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImplementation(this._newsApiService);
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    final httpResponse = await _newsApiService.getNewsArticles(
      apikey: newsapiKey,
      country: countryQuery,
      category: categoryQuery,
    );
    if (httpResponse.response.statusCode == HttpStatus.ok) {
      return DataSuccess(httpResponse.data);
    } else {
      return DataFailed(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpResponse.response.requestOptions,
        ),
      );
    }
  }
}
