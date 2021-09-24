import 'package:json_annotation/json_annotation.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';

part 'tv_show.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TvShow {
  TvShow({
    required this.backdropPath,
    required this.firstAirDate,
    required this.genres,
    required this.id,
    required this.name,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  final String? backdropPath;
  final String? firstAirDate;
  final List<Genre>? genres;
  final int id;
  final String name;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String? posterPath;
  final double voteAverage;
  final int voteCount;

  static const jsonFactory = _$TvShowFromJson;

  factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);

  Map<String, dynamic> toJson() => _$TvShowToJson(this);
}
