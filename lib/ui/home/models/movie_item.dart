import 'package:movies_flutter/api/models/movie.dart';
import 'package:movies_flutter/configs.dart';

class MovieItemUiModel {
  final String name;
  final DateTime date;
  final String poster;
  final String backdrop;
  final int id;

  MovieItemUiModel(
    this.id,
    this.name,
    this.date,
    this.poster,
    this.backdrop,
  );
}

extension MapToMovieItem on Movie {
  MovieItemUiModel toMovieItem() {
    return MovieItemUiModel(
      id,
      title,
      releaseDate,
      '${BuildConfigs.BaseImageUrlW500}$posterPath',
      '${BuildConfigs.BaseImageUrlOriginal}$backdropPath',
    );
  }
}
