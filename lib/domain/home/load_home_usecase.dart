import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/auth_store.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/account/account.dart';
import 'package:movies_flutter/data/remote/services/entities/discover_movies/discover_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/genres/genres.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_movies/popular_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_tv/popular_tv.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/ui/home/models/home_ui_model.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:movies_flutter/ui/home/models/tv_item.dart';

class LoadHomeUsecase extends Usecase<Nothing, HomeModel> {
  LoadHomeUsecase({
    required this.tmdbService,
    required this.authStore,
  });

  final TmdbService tmdbService;

  final AuthStore authStore;

  @override
  Future<HomeModel> execute(Nothing params) async {
    final sessionId = (await authStore.getSessionId())!;

    final popularMovies = (await tmdbService.getPopularMovies()).body!;
    final popularTv = (await tmdbService.getPopularTvShows()).body!;
    final discoverMovies = (await tmdbService.discoverMovies()).body!;
    final genres = (await tmdbService.getMovieGenres()).body!;
    final account = (await tmdbService.account(sessionId)).body!;

    return _createHomeModel(
      popularMovies,
      popularTv,
      discoverMovies,
      genres,
      account,
    );
  }

  HomeModel _createHomeModel(
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

    return HomeModel(
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
