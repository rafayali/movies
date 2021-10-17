// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovies _$PopularMoviesFromJson(Map<String, dynamic> json) =>
    PopularMovies(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularMoviesToJson(PopularMovies instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
