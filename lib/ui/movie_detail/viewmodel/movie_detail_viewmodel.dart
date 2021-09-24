import 'dart:async';

import 'package:async/async.dart';
import 'package:movies_flutter/core/viewmodel.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';

import '../models/movie_detail_events.dart';

class MovieDetailViewModel extends ViewModel<MovieDetail> {
  MovieDetailViewModel({
    required MovieDetailParams params,
    required LoadMovieDetailUsecase loadMovieDetailUsecase,
    required LoadTvShowDetailUsecase loadTvShowDetailUsecase,
  })  : _params = params,
        _loadMovieDetailUsecase = loadMovieDetailUsecase,
        _loadTvShowDetailUsecase = loadTvShowDetailUsecase,
        super(
          MovieDetail(
            id: params.id,
            title: params.title,
            backdrop: params.backdropUrl,
          ),
        );

  final MovieDetailParams _params;

  final LoadMovieDetailUsecase _loadMovieDetailUsecase;

  final LoadTvShowDetailUsecase _loadTvShowDetailUsecase;

  final _events = StreamController<MovieDetailEvents>.broadcast();
  Stream<MovieDetailEvents> get events => _events.stream;

  Future<void> load() async {
    final Result<MovieDetail> result;

    switch (_params.type) {
      case Type.movie:
        result = await _loadMovieDetailUsecase.invoke(_params.id);
        break;
      case Type.tvShow:
        result = await _loadTvShowDetailUsecase.invoke(_params.id);
        break;
    }

    if (result.isValue) {
      setState(result.asValue!.value);
    } else {
      _events
          .add(const MovieDetailEvents.message('Error getting movie detail'));
    }
  }

  @override
  void dispose() {
    _events.close();
    super.dispose();
  }
}
