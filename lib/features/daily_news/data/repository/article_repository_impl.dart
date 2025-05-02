import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:news_app_cleancode/core/constants/constants.dart';
import 'package:news_app_cleancode/core/resources/data_state.dart';
import 'package:news_app_cleancode/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:news_app_cleancode/features/daily_news/data/models/article_model.dart';
// import 'package:news_app_cleancode/features/daily_news/domain/entities/article.dart';
import 'package:news_app_cleancode/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
          country: newsAPICountry,
          apiKey: newsAPIKey,
          category: newsAPICategory);
      if (httpResponse.response.statusMessage == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.unknown,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
    // TODO: implement getNewsArticles
  }
}
