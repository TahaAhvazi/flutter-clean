import 'package:bloc/bloc.dart';
import 'package:clean_news/core/resources/data_state.dart';
import 'package:clean_news/features/daily_news/domain/usecases/get_article_usecase.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entitites/article.dart';

part 'remote_article_event.dart';
part 'remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUsecase _getArticleUsecase;
  RemoteArticleBloc(this._getArticleUsecase)
      : super(const RemoteArticleLoading()) {
    on<GetArticles>(onGetArticle);
  }
  void onGetArticle(GetArticles event, Emitter<RemoteArticleState> emit) async {
    final datastate = await _getArticleUsecase();
    if (datastate is DataSuccess && datastate.data!.isNotEmpty) {
      emit(RemoteArticleDone(datastate.data!));
    }
    if (datastate is DataFailed) {
      emit(RemoteArticleError(datastate.error!));
    }
  }
}
