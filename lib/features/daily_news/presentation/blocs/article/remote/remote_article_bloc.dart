import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_cleancode/core/resources/data_state.dart';
import 'package:news_app_cleancode/features/daily_news/domain/usecases/get_news_article_usecase.dart';
import 'package:news_app_cleancode/features/daily_news/presentation/blocs/article/remote/remote_article_event.dart';
import 'package:news_app_cleancode/features/daily_news/presentation/blocs/article/remote/remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetNewsArticleUsecase _getNewsArticleUsecase;

  RemoteArticleBloc(this._getNewsArticleUsecase)
      : super(const RemoteArticleleLoading()) {
    on<GetNewsArticle>(onGetNewsArticle);
  }

  void onGetNewsArticle(
    GetNewsArticle event,
    Emitter<RemoteArticleState> emit,
  ) async {
    emit(const RemoteArticleleLoading());
    final dataState = await _getNewsArticleUsecase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteArticlesDone(dataState.data!));
    } else if (dataState is DataFailed) {
      emit(RemoteArticlesError(dataState.error!));
    }
  }
}
