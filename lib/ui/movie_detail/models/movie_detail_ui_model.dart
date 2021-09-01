import 'cast.dart';

class MovieDetailUiModel {
  final int id;
  final String title;
  final String? description;
  final double? rating;
  final List<String>? genre;
  final int? runtime;
  final String backdrop;
  final List<Cast>? cast;
  final DateTime? releaseDate;

  MovieDetailUiModel({
    required this.id,
    required this.title,
    required this.backdrop,
    this.description,
    this.rating,
    this.genre,
    this.runtime,
    this.cast,
    this.releaseDate,
  });
}
