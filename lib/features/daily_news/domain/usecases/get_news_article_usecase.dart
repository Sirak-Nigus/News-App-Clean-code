import 'package:news_app_cleancode/core/resources/data_state.dart';
import 'package:news_app_cleancode/core/usecase/usecase.dart';
import 'package:news_app_cleancode/features/daily_news/domain/entities/article.dart';
import 'package:news_app_cleancode/features/daily_news/domain/repository/article_repository.dart';

class GetNewsArticleUsecase
    implements Usecase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetNewsArticleUsecase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call(void params) {
    return _articleRepository.getNewsArticles();
  }
}
