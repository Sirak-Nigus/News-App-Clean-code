import "package:dio/dio.dart";
import "package:equatable/equatable.dart";
import "package:news_app_cleancode/features/daily_news/domain/entities/article.dart";

abstract class RemoteArticleState extends Equatable {
  final DioException? error;
  final List<ArticleEntity>? articles;

  const RemoteArticleState({this.error, this.articles});

  @override
  List<Object?> get props => [error!, articles!];
}

class RemoteArticleleLoading extends RemoteArticleState {
  const RemoteArticleleLoading();
}

class RemoteArticlesDone extends RemoteArticleState {
  const RemoteArticlesDone(List<ArticleEntity> articles)
      : super(articles: articles);
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioException error) : super(error: error);
}
