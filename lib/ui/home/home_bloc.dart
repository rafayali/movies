import 'dart:async';

import 'package:movies_flutter/configs.dart';
import 'package:movies_flutter/services/models/account.dart';
import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/home/models/home_ui_model.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/home/models/tv_item.dart';
import 'package:movies_flutter/ui/state.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class HomeBloc {
  HomeBloc(this.tmdbApi, this._authStore) {
    _load();
  }

  final TmdbService tmdbApi;

  final AuthStore _authStore;

  final _newState = BehaviorSubject<UiState<HomeUiModel>>();
  Stream<UiState<HomeUiModel>> get newState => _newState;

  final _compositeSubscription = CompositeSubscription();

  void retry() {
    _newState.add(Loading());
    _load();
  }

  void _load() async {
    final sessionId = await _authStore.getSessionId();

    ZipStream.zip5<PopularMovies, PopularTv, DiscoverMovies, Genres, Account,
        HomeUiModel>(
      tmdbApi.getPopularMovies().asStream(),
      tmdbApi.getPopularTvShows().asStream(),
      tmdbApi.discoverMovies().asStream(),
      tmdbApi.getMovieGenres().asStream(),
      tmdbApi.account(sessionId!).asStream(),
      (popular, tvShows, discover, genres, account) {
        return _createHomeUiModel(popular, tvShows, discover, genres, account);
      },
    ).listen(
      (value) {
        _newState.add(Success(value));
      },
      onError: (error, trace) {
        _newState.add(Error('Error loading data list'));
      },
    ).addTo(_compositeSubscription);
  }

  HomeUiModel _createHomeUiModel(
    PopularMovies popularMovies,
    PopularTv popularTv,
    DiscoverMovies discoverMovies,
    Genres genres,
    Account account,
  ) {
    final String? imageUrl;
    if (account.avatar.tmdb.avatarPath == null) {
      imageUrl =
          'https://www.gravatar.com/avatar/${account.avatar.gravatar.hash}';
    } else {
      imageUrl =
          '${BuildConfigs.BaseImageUrlW200}${account.avatar.tmdb.avatarPath}';
    }

    return HomeUiModel(
      name: account.name ?? account.username,
      imageUrl: imageUrl,
      popularMovies: popularMovies.results
          .map((e) => e.toMovieItem(genres.genres))
          .toList(),
      popularTvShows:
          popularTv.results.map((e) => e.toTvShowUiModel()).toList(),
      discoverMovies: discoverMovies.results
          .map((e) => e.toMovieItem(genres.genres))
          .toList(),
    );
  }

  void dispose() {
    _compositeSubscription.dispose();
    _newState.close();
  }
}
