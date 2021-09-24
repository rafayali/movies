import 'package:json_annotation/json_annotation.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';

part 'genres.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Genres {
  Genres({
    required this.genres,
  });

  final List<Genre> genres;

  static const jsonFactory = _$GenresFromJson;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

  Map<String, dynamic> toJson() => _$GenresToJson(this);
}
