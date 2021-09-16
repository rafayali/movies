import 'package:json_annotation/json_annotation.dart';

import 'tv_show.dart';

part 'popular_tv.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PopularTv {
  PopularTv({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  final int page;
  final List<TvShow> results;
  final int totalPages;
  final int totalResults;

  static const jsonFactory = _$PopularTvFromJson;

  factory PopularTv.fromJson(Map<String, dynamic> json) =>
      _$PopularTvFromJson(json);

  Map<String, dynamic> toJson() => _$PopularTvToJson(this);
}
