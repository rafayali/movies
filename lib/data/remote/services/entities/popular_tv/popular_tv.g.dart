// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_tv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularTv _$PopularTvFromJson(Map<String, dynamic> json) => PopularTv(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => TvShow.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$PopularTvToJson(PopularTv instance) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};
