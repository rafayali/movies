import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart'
    as credits;
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';

import '../../config.dart';
import 'entities/movie_detail.dart';

class LoadMovieDetailUsecase extends Usecase<int, MovieDetail> {
  LoadMovieDetailUsecase({required this.tmdbService});

  final TmdbService tmdbService;

  @override
  Future<MovieDetail> execute(int params) async {
    final movie = (await tmdbService.getMovie(params)).body!;
    final credits = (await tmdbService.getMovieCredits(params)).body!;
    return _createMovieDetailFromMovie(movie, credits);
  }
}

MovieDetail _createMovieDetailFromMovie(
  Movie movie,
  credits.Credits credits,
) {
  return MovieDetail(
    id: movie.id,
    title: movie.title,
    backdrop: '${BuildConfigs.baseImageUrlOriginal}${movie.backdropPath}',
    description: movie.overview,
    rating: movie.voteAverage,
    genre: movie.genres?.map((e) => e.name).toList() ?? List.empty(),
    runtime: movie.runtime,
    cast: credits.cast
        .map((e) => Cast(
              name: e.name,
              avatarUrl: '${BuildConfigs.baseImageUrlW200}${e.profilePath}',
            ))
        .toList(),
    releaseDate: movie.releaseDate,
  );
}
