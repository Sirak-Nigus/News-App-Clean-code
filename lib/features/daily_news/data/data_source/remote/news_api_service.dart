import 'dart:io';
import 'package:news_app_cleancode/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:news_app_cleancode/features/daily_news/data/models/article_model.dart';
part 'news_api_service.g.dart';


@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiServiceImpl;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles() {
    @Query('country') String country,
    @Query('apiKey') String apiKey,
    @Query('category') int category,
  })
}
