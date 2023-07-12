import 'package:clean_news/core/constants/constants.dart';
import 'package:clean_news/features/daily_news/data/model/article.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl: NewsAPiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apikey") String? apikey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
