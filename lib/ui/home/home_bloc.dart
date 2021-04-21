import 'dart:async';
import 'dart:ffi';

import 'package:movies_flutter/api/models/discover/discover_movies.dart';
import 'package:movies_flutter/api/models/popular_movies.dart';
import 'package:movies_flutter/api/models/popular_tv.dart';
import 'package:movies_flutter/ui/home/models/tv_item.dart';
import 'package:rxdart/rxdart.dart';

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

  final _discoverMovies = BehaviorSubject<List<MovieItemUiModel>>();
  Stream<List<MovieItemUiModel>> get discoverMovies => _discoverMovies.stream;

  final _compositeSubscription = CompositeSubscription();

  HomeBloc(this.tmdbApi) {
    _load();
  }

  void retry() {
    _state.add(Loading());
    _load();
  }

  void _load() async {
    ZipStream.zip3<PopularMovies, PopularTv, DiscoverMovies, dynamic>(
      tmdbApi.getPopularMovies().asStream(),
      tmdbApi.getPopularTvShows().asStream(),
      tmdbApi.discoverMovies().asStream(),
      (a, b, c) {
        _popularMovies.add(a.results.map((e) => e.toMovieItem()).toList());
        _popularTvShows.add(b.results.map((e) => e.toTvShowUiModel()).toList());
        _discoverMovies.add(c.results.map((e) => e.toMovieItem()).toList());
        return null;
      },
    ).listen(
      (value) {
        _state.add(Success(null));
      },
      onError: (error, trace) {
        _state.add(Error('Error loading data list'));
      },
    ).addTo(_compositeSubscription);
  }

  void dispose() {
    _compositeSubscription.dispose();
    _state.close();
    _popularMovies.close();
    _popularTvShows.close();
    _discoverMovies.close();
  }
}
