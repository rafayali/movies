import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/local/auth_store.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/account/account.dart';
import 'package:movies_flutter/data/remote/services/entities/discover_movies/discover_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/genres/genres.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_movies/popular_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_tv/popular_tv.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/ui/landing/discover/models/home_ui_model.dart';
import 'package:movies_flutter/ui/landing/discover/models/movie_item.dart';
import 'package:movies_flutter/ui/landing/discover/models/tv_item.dart';

class LoadHomeUsecase extends UseCase<Nothing, HomeModel> {
  LoadHomeUsecase({
    required this.tmdbService,
    required this.authStore,
    required this.buildConfig,
  });

  final TmdbService tmdbService;

  final AuthStore authStore;

  final BuildConfig buildConfig;

  @override
  Future<HomeModel> execute(Nothing params) async {
    final sessionId = (await authStore.getSessionId());

    final popularMovies =
        (await tmdbService.getPopularMovies(buildConfig.tmdbApiKey)).body!;
    final popularTv =
        (await tmdbService.getPopularTvShows(buildConfig.tmdbApiKey)).body!;
    final discoverMovies =
        (await tmdbService.discoverMovies(buildConfig.tmdbApiKey)).body!;
    final genres =
        (await tmdbService.getMovieGenres(buildConfig.tmdbApiKey)).body!;

    final Account? account;

    account = sessionId != null
        ? (await tmdbService.account(buildConfig.tmdbApiKey, sessionId)).body!
        : null;

    return _createHomeModel(
      popularMovies,
      popularTv,
      discoverMovies,
      genres,
      account,
      buildConfig,
    );
  }

  HomeModel _createHomeModel(
    PopularMovies popularMovies,
    PopularTv popularTv,
    DiscoverMovies discoverMovies,
    Genres genres,
    Account? account,
    BuildConfig buildConfig,
  ) {
    final String? imageUrl;

    if (account == null) {
      imageUrl = null;
    } else {
      if (account.avatar.tmdb.avatarPath == null) {
        imageUrl = '${buildConfig.baseUrl}${account.avatar.gravatar.hash}';
      } else {
        imageUrl =
            '${buildConfig.baseImageUrlW200}${account.avatar.tmdb.avatarPath}';
      }
    }

    return HomeModel(
      name: account?.name ?? account?.username,
      imageUrl: imageUrl,
      popularMovies: popularMovies.results
          .map((e) => e.toMovieItem(genres.genres, buildConfig))
          .toList(),
      popularTvShows:
          popularTv.results.map((e) => e.toTvShowUiModel(buildConfig)).toList(),
      discoverMovies: discoverMovies.results
          .map((e) => e.toMovieItem(genres.genres, buildConfig))
          .toList(),
    );
  }
}
