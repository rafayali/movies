import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/services/models/movie.dart';

class MovieItemUiModel {
  final String name;
  final DateTime? date;
  final String poster;
  final String backdrop;
  final int id;
  final String backdropThumb;
  final String? genres;

  MovieItemUiModel(
    this.id,
    this.name,
    this.date,
    this.poster,
    this.backdrop,
    this.backdropThumb,
    this.genres,
  );
}

extension MapToMovieItem on Movie {
  MovieItemUiModel toMovieItem(List<Genre> externalGenres) {
    final genreString = externalGenres
        .where((element) => genreIds!.any((id) => element.id == id))
        .map((e) => e.name)
        .take(3)
        .toList()
        .join(',');
    return MovieItemUiModel(
      id,
      title,
      releaseDate,
      '${BuildConfigs.baseImageUrlW500}$posterPath',
      '${BuildConfigs.baseImageUrlOriginal}$backdropPath',
      '${BuildConfigs.baseImageUrlW500}$backdropPath',
      genreString,
    );
  }
}
