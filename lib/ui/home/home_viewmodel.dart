import 'package:flutter/foundation.dart';
import 'package:movies_flutter/services/models/account.dart';
import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/home/models/home_ui_model.dart';
import 'package:movies_flutter/ui/state.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';

import '../../config.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/home/models/tv_item.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(
      {required TmdbService tmdbService, required AuthStore authStore})
      : _tmdbService = tmdbService,
        _authStore = authStore;

  final TmdbService _tmdbService;

  final AuthStore _authStore;

  UiState<HomeUiModel> _state = const UiState.loading();
  UiState<HomeUiModel> get state => _state;

  Future<void> load() async {
    final sessionId = (await _authStore.getSessionId())!;

    try {
      final popularMovies = await _tmdbService.getPopularMovies();
      final popularTv = await _tmdbService.getPopularTvShows();
      final discoverMovies = await _tmdbService.discoverMovies();
      final genres = await _tmdbService.getMovieGenres();
      final account = await _tmdbService.account(sessionId);

      final uiModel = _createHomeUiModel(
        popularMovies,
        popularTv,
        discoverMovies,
        genres,
        account,
      );

      _state = UiState.success(uiModel);

      notifyListeners();
    } on Exception {
      _state = const UiState.error('Error loading movies data');
    }
  }

  void retry() {
    _state = const UiState.loading();
    notifyListeners();
    load();
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
      imageUrl = '${BuildConfigs.baseUrl}${account.avatar.gravatar.hash}';
    } else {
      imageUrl =
          '${BuildConfigs.baseImageUrlW200}${account.avatar.tmdb.avatarPath}';
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
}
