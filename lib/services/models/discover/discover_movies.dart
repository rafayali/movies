import 'package:json_annotation/json_annotation.dart';

import '../movie.dart';

part 'discover_movies.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DiscoverMovies {
  DiscoverMovies({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  final int page;
  final List<Movie> results;
  final int totalPages;
  final int totalResults;

  factory DiscoverMovies.fromJson(Map<String, dynamic> json) =>
      _$DiscoverMoviesFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoverMoviesToJson(this);
}
