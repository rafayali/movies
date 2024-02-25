import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';

@freezed
class Cast with _$Cast {
  factory Cast({
    required String name,
    required String avatarUrl,
  }) = _Cast;
}

@freezed
class MovieDetail with _$MovieDetail {
  factory MovieDetail({
    required int id,
    required String title,
    required String? backdrop,
    String? description,
    double? rating,
    List<String>? genre,
    int? runtime,
    List<Cast>? cast,
    DateTime? releaseDate,
  }) = _MovieDetail;
}

@freezed
class MovieDetailParams with _$MovieDetailParams {
  factory MovieDetailParams({
    required int id,
    required String title,
    required String? backdropUrl,
    required Type type,
  }) = _MovieDetailParams;
}

enum Type {
  movie('movie'),
  tvShow('tvShow');

  const Type(this.value);

  final String value;
}

extension TypeExt on String {
  Type toType() => switch (this) {
        'movie' => Type.movie,
        'tvShow' => Type.tvShow,
        String() => throw Exception('invalid value for type: $this'),
      };
}
