import 'package:news_app_cleancode/core/resources/data_state.dart';
import 'package:news_app_cleancode/features/daily_news/data/models/article_model.dart';
import 'package:news_app_cleancode/features/daily_news/domain/entities/article.dart';
import 'package:news_app_cleancode/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
