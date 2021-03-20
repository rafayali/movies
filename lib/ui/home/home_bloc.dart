import 'dart:async';
import 'dart:ffi';

import 'package:async/async.dart' as async;
import 'package:movies_flutter/ui/home/models/tv_item.dart';

import 'package:rxdart/subjects.dart';
import 'package:movies_flutter/api/tmdb_api.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/state.dart';

class HomeBloc {
  final TmdbApi tmdbApi;

  final _state = PublishSubject<UiState<Void>>();
  Stream<UiState<Void>> get state => _state.stream;

  final _popularMovies = BehaviorSubject<List<MovieItemUiModel>>();
  Stream<List<MovieItemUiModel>> get popularMovies => _popularMovies.stream;

  final _popularTvShows = BehaviorSubject<List<TvShowUiModel>>();
  Stream<List<TvShowUiModel>> get popularTvShows => _popularTvShows.stream;

  HomeBloc(this.tmdbApi) {
    _load();
  }

  void retry() {
    _state.add(Loading());
    _load();
  }

  void _load() async {
    final _moviesResult =
        await async.Result.capture(tmdbApi.getPopularMovies());
    final _tvShowsResult =
        await async.Result.capture(tmdbApi.getPopularTvShows());

    if (_moviesResult.isError || _tvShowsResult.isError) {
      _state.add(Error('Error loading movies list'));
      return;
    }

    _popularMovies.add(_moviesResult.asValue.value.results
        .map((e) => e.toMovieItem())
        .toList());
    _popularTvShows.add(_tvShowsResult.asValue.value.results
        .map((e) => e.toTvShowUiModel())
        .toList());

    _state.add(Success(null));
  }

  void dispose() {
    _state.close();
    _popularMovies.close();
    _popularTvShows.close();
  }
}
