import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_cleancode/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:news_app_cleancode/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:news_app_cleancode/features/daily_news/domain/repository/article_repository.dart';
import 'package:news_app_cleancode/features/daily_news/domain/usecases/get_news_article_usecase.dart';
import 'package:news_app_cleancode/features/daily_news/presentation/blocs/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> intializeDependencies() async {
  // Features - Daily News
  sl.registerSingleton<Dio>(Dio());

  //dependency injection for the repository
  sl.registerFactory<ArticleRepository>(() => ArticleRepositoryImpl(sl()));

  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  //usecase

  sl.registerSingleton<GetNewsArticleUsecase>(GetNewsArticleUsecase(sl()));

  //bloc
  sl.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(sl()));
  // sl.registerFactory<LocalArticleBloc>(
}
