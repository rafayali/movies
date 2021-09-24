import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/tv_show/tv_show.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart'
    as credits;

import '../../config.dart';

class LoadTvShowDetailUsecase extends Usecase<int, MovieDetail> {
  LoadTvShowDetailUsecase({required this.tmdbService});

  final TmdbService tmdbService;

  @override
  Future<MovieDetail> execute(int params) async {
    final tvShow = (await tmdbService.getTvShow(params)).body!;
    final credits = (await tmdbService.getTvShowCredits(params)).body!;
    return _createMovieDetailFromTvShow(tvShow, credits);
  }

  MovieDetail _createMovieDetailFromTvShow(
    TvShow tvShow,
    credits.Credits credits,
  ) {
    return MovieDetail(
      id: tvShow.id,
      title: tvShow.name,
      backdrop: '${BuildConfigs.baseImageUrlOriginal}${tvShow.backdropPath}',
      description: tvShow.overview,
      rating: tvShow.voteAverage,
      genre: tvShow.genres?.map((e) => e.name).toList() ?? List.empty(),
      runtime: null,
      cast: credits.cast
          .map((e) => Cast(
                name: e.name,
                avatarUrl: '${BuildConfigs.baseImageUrlW200}${e.profilePath}',
              ))
          .toList(),
      releaseDate: tvShow.firstAirDate != null
          ? DateTime.parse(tvShow.firstAirDate!)
          : null,
    );
  }
}
