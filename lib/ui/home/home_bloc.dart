import 'dart:async';

import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/home/models/tv_item.dart';
import 'package:movies_flutter/ui/state.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class HomeBloc {
  final TmdbService tmdbApi;

  final _state = PublishSubject<UiState<dynamic>>();
  Stream<UiState<dynamic>> get state => _state.stream;

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
    ZipStream.zip4<PopularMovies, PopularTv, DiscoverMovies, Genres, dynamic>(
      tmdbApi.getPopularMovies().asStream(),
      tmdbApi.getPopularTvShows().asStream(),
      tmdbApi.discoverMovies().asStream(),
      tmdbApi.getMovieGenres().asStream(),
      (popular, tvShows, discover, genres) {
        _popularMovies.add(
            popular.results.map((e) => e.toMovieItem(genres.genres)).toList());
        _popularTvShows
            .add(tvShows.results.map((e) => e.toTvShowUiModel()).toList());
        _discoverMovies.add(
            discover.results.map((e) => e.toMovieItem(genres.genres)).toList());

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
