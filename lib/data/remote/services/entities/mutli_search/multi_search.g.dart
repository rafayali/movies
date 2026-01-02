// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultiSearch _$MultiSearchFromJson(Map<String, dynamic> json) => _MultiSearch(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => Entity.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$MultiSearchToJson(_MultiSearch instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) => MovieEntity(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  backdropPath: json['backdrop_path'] as String?,
  posterPath: json['poster_path'] as String?,
  releaseDate: json['release_date'] as String?,
  $type: json['media_type'] as String?,
);

Map<String, dynamic> _$MovieEntityToJson(MovieEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'media_type': instance.$type,
    };

TvShowEntity _$TvShowEntityFromJson(Map<String, dynamic> json) => TvShowEntity(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  backdropPath: json['backdrop_path'] as String?,
  posterPath: json['poster_path'] as String?,
  firstAirDate: json['first_air_date'] as String?,
  $type: json['media_type'] as String?,
);

Map<String, dynamic> _$TvShowEntityToJson(TvShowEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
      'media_type': instance.$type,
    };

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) => PersonEntity(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  profilePath: json['profile_path'] as String?,
  $type: json['media_type'] as String?,
);

Map<String, dynamic> _$PersonEntityToJson(PersonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_path': instance.profilePath,
      'media_type': instance.$type,
    };
