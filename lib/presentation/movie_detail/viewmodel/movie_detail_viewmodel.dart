import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/foundation.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';

class MovieDetailViewModel extends ValueNotifier<MovieDetail> {
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

  Future<void> load() async {
    final Result<MovieDetail> result;

    switch (_params.type) {
      case Type.movie:
        result = await _loadMovieDetailUsecase.invoke(_params);
        break;
      case Type.tvShow:
        result = await _loadTvShowDetailUsecase.invoke(_params);
        break;
    }

    if (result.isValue) {
      value = (result.asValue!.value);
    }
  }
}
