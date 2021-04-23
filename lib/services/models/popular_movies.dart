import 'package:json_annotation/json_annotation.dart';

import 'movie.dart';

part 'popular_movies.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PopularMovies {
  PopularMovies({
    required this.page,
    required this.results,
  });

  final int page;
  final List<Movie> results;

  factory PopularMovies.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMoviesToJson(this);
}
