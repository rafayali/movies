import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_flutter/services/models/movie.dart';
import 'package:movies_flutter/services/models/movie_credits.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/movie_detail/models/movie_detail_ui_model.dart';
import 'package:movies_flutter/ui/movie_detail/models/movie_detail_events.dart';
import 'package:movies_flutter/ui/movie_detail/models/params.dart';
import 'package:movies_flutter/ui/movie_detail/models/cast.dart' as ui;

import '../../config.dart';

class MovieDetailViewModel extends ChangeNotifier {
  MovieDetailViewModel({
    required MovieDetailParams params,
    required TmdbService tmdbService,
  })  : _params = params,
        _tmdbService = tmdbService,
        _state = MovieDetailUiModel(
          id: params.id,
          title: params.title,
          backdrop: params.backdropUrl,
        ) {
    _load(_params.id);
  }

  final MovieDetailParams _params;

  final TmdbService _tmdbService;

  MovieDetailUiModel _state;
  MovieDetailUiModel get state => _state;

  final _events = StreamController<MovieDetailEvents>.broadcast();
  Stream<MovieDetailEvents> get events => _events.stream;

  Future<void> _load(int id) async {
    try {
      final movie = await _tmdbService.getMovie(_params.id);
      final credits = await _tmdbService.getMovieCredits(_params.id);

      _state = _createMovieDetailUiModel(movie, credits);

      notifyListeners();
    } on Exception {
      _events
          .add(const MovieDetailEvents.message('Error getting movie detail'));
    }
  }

  MovieDetailUiModel _createMovieDetailUiModel(
    Movie movie,
    Credits credits,
  ) {
    return MovieDetailUiModel(
      id: movie.id,
      title: movie.title,
      backdrop: '${BuildConfigs.baseImageUrlOriginal}${movie.backdropPath}',
      description: movie.overview,
      rating: movie.voteAverage,
      genre: movie.genres?.map((e) => e.name).toList() ?? List.empty(),
      runtime: movie.runtime,
      cast: credits.cast
          .map((e) => ui.Cast(
                e.name,
                '${BuildConfigs.baseImageUrlW200}${e.profilePath}',
              ))
          .toList(),
      releaseDate: movie.releaseDate,
    );
  }

  @override
  void dispose() {
    _events.close();
    super.dispose();
  }
}
