// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiSearchImpl _$$MultiSearchImplFromJson(Map<String, dynamic> json) =>
    _$MultiSearchImpl(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$MultiSearchImplToJson(_$MultiSearchImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$MovieEntityImpl _$$MovieEntityImplFromJson(Map<String, dynamic> json) =>
    _$MovieEntityImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$MovieEntityImplToJson(_$MovieEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'media_type': instance.$type,
    };

_$TvShowEntityImpl _$$TvShowEntityImplFromJson(Map<String, dynamic> json) =>
    _$TvShowEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$TvShowEntityImplToJson(_$TvShowEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
      'media_type': instance.$type,
    };

_$PersonEntityImpl _$$PersonEntityImplFromJson(Map<String, dynamic> json) =>
    _$PersonEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$PersonEntityImplToJson(_$PersonEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_path': instance.profilePath,
      'media_type': instance.$type,
    };
