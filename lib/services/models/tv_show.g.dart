// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvShow _$TvShowFromJson(Map<String, dynamic> json) {
  return TvShow(
    backdropPath: json['backdrop_path'] as String?,
    firstAirDate: json['first_air_date'] as String?,
    genreIds:
        (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    id: json['id'] as int,
    name: json['name'] as String,
    originCountry: (json['origin_country'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    originalLanguage: json['original_language'] as String,
    originalName: json['original_name'] as String,
    overview: json['overview'] as String,
    popularity: (json['popularity'] as num).toDouble(),
    posterPath: json['poster_path'] as String?,
    voteAverage: (json['vote_average'] as num).toDouble(),
    voteCount: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$TvShowToJson(TvShow instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'name': instance.name,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
