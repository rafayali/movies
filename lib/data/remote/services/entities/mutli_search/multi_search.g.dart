// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultiSearch _$$_MultiSearchFromJson(Map<String, dynamic> json) =>
    _$_MultiSearch(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_MultiSearchToJson(_$_MultiSearch instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$MovieEntity _$$MovieEntityFromJson(Map<String, dynamic> json) =>
    _$MovieEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$$MovieEntityToJson(_$MovieEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };

_$TvShowEntity _$$TvShowEntityFromJson(Map<String, dynamic> json) =>
    _$TvShowEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
    );

Map<String, dynamic> _$$TvShowEntityToJson(_$TvShowEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
    };
