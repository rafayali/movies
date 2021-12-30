import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/tv_show/tv_show.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart'
    as credits;

import '../../config.dart';

class LoadTvShowDetailUsecase extends UseCase<int, MovieDetail> {
  LoadTvShowDetailUsecase({
    required this.tmdbService,
    required this.buildConfig,
  });

  final TmdbService tmdbService;

  final BuildConfig buildConfig;

  @override
  Future<MovieDetail> execute(int params) async {
    final tvShow =
        (await tmdbService.getTvShow(buildConfig.tmdbApiKey, params)).body!;
    final credits =
        (await tmdbService.getTvShowCredits(buildConfig.tmdbApiKey, params))
            .body!;
    return _createMovieDetailFromTvShow(tvShow, credits, buildConfig);
  }

  MovieDetail _createMovieDetailFromTvShow(
    TvShow tvShow,
    credits.Credits credits,
    BuildConfig buildConfig,
  ) {
    return MovieDetail(
      id: tvShow.id,
      title: tvShow.name,
      backdrop: '${buildConfig.baseImageUrlOriginal}${tvShow.backdropPath}',
      description: tvShow.overview,
      rating: tvShow.voteAverage,
      genre: tvShow.genres?.map((e) => e.name).toList() ?? List.empty(),
      runtime: null,
      cast: credits.cast
          .map((e) => Cast(
                name: e.name,
                avatarUrl: '${buildConfig.baseImageUrlW200}${e.profilePath}',
              ))
          .toList(),
      releaseDate: tvShow.firstAirDate != null
          ? DateTime.parse(tvShow.firstAirDate!)
          : null,
    );
  }
}
