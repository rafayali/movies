import 'dart:async';

import 'package:async/async.dart' as async;

import 'package:rxdart/subjects.dart';
import 'package:movies_flutter/api/tmdb_api.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/state.dart';

class HomeBloc {
  final TmdbApi tmdbApi;

  final _state = PublishSubject<UiState<List<MovieItemUiModel>>>();
  Stream<UiState<List<MovieItemUiModel>>> get state => _state.stream;

  HomeBloc(this.tmdbApi) {
    _load();
  }

  void _load() async {
    final result = await async.Result.capture(tmdbApi.getPopularMovies());

    if (result.isValue) {
      final movieItems =
          result.asValue.value.results.map((e) => e.toMovieItem()).toList();
      _state.add(Success(List.unmodifiable(movieItems)));
    }
  }

  void dispose() {
    _state.close();
  }
}
