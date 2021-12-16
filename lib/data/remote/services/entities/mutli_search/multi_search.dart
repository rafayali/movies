import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_search.g.dart';
part 'multi_search.freezed.dart';

@Freezed()
class MultiSearch with _$MultiSearch {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory MultiSearch({
    required int page,
    required List<Entity> results,
    required int totalPages,
    required int totalResults,
  }) = _MultiSearch;

  static const jsonFactory = _$MultiSearchFromJson;

  factory MultiSearch.fromJson(Map<String, dynamic> json) =>
      _$MultiSearchFromJson(json);
}

@Freezed(unionKey: 'media_type', unionValueCase: FreezedUnionCase.snake)
class Entity with _$Entity {
  @FreezedUnionValue('movie')
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Entity.movie({
    required int id,
    required String title,
    required String? backdropPath,
    required String? posterPath,
    required String? releaseDate,
  }) = MovieEntity;

  @FreezedUnionValue('tv')
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Entity.tvShow({
    required int id,
    required String name,
    required String? backdropPath,
    required String? posterPath,
    required String? firstAirDate,
  }) = TvShowEntity;

  @FreezedUnionValue('person')
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Entity.person({
    required int id,
    required String name,
    required String? profilePath,
  }) = PersonEntity;

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);
}
