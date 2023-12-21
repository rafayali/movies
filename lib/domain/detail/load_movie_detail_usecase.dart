import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart'
    as credits;
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';

import '../../config.dart';
import 'entities/movie_detail.dart';

class LoadMovieDetailUsecase extends UseCase<MovieDetailParams, MovieDetail> {
  LoadMovieDetailUsecase(
      {required this.tmdbService, required this.buildConfig});

  final TmdbService tmdbService;

  final BuildConfig buildConfig;

  @override
  Future<MovieDetail> execute(MovieDetailParams params) async {
    final movie =
        (await tmdbService.getMovie(buildConfig.tmdbApiKey, params.id)).body!;
    final credits =
        (await tmdbService.getMovieCredits(buildConfig.tmdbApiKey, params.id))
            .body!;
    return _createMovieDetailFromMovie(movie, credits, buildConfig, params);
  }
}

MovieDetail _createMovieDetailFromMovie(
  Movie movie,
  credits.Credits credits,
  BuildConfig buildConfig,
  MovieDetailParams params,
) {
  return MovieDetail(
    id: movie.id,
    title: movie.title,
    backdrop: params.backdropUrl,
    description: movie.overview,
    rating: movie.voteAverage,
    genre: movie.genres?.map((e) => e.name).toList() ?? List.empty(),
    runtime: movie.runtime,
    cast: credits.cast
        .map((e) => Cast(
              name: e.name,
              avatarUrl: '${buildConfig.baseImageUrlW200}${e.profilePath}',
            ))
        .toList(),
    releaseDate: movie.releaseDate,
  );
}
