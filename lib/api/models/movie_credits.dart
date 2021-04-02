import 'package:json_annotation/json_annotation.dart';

part 'movie_credits.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Credits {
  Credits({
    required this.id,
    required this.cast,
    required this.crew,
  });

  final int id;
  final List<Cast> cast;
  final List<Cast> crew;

  factory Credits.fromJson(Map<String, dynamic> json) =>
      _$CreditsFromJson(json);

  Map<String, dynamic> toJson() => _$CreditsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Cast {
  Cast({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.castId,
    required this.character,
    required this.creditId,
    required this.order,
    required this.department,
    required this.job,
  });

  final bool? adult;
  final int gender;
  final int id;
  final String? knownForDepartment;
  final String name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
  final int? castId;
  final String? character;
  final String? creditId;
  final int? order;
  final String? department;
  final String? job;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

  Map<String, dynamic> toJson() => _$CastToJson(this);
}
