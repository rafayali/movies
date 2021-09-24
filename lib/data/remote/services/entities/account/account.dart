import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Account {
  Account({
    required this.avatar,
    required this.id,
    required this.iso6391,
    required this.iso31661,
    required this.name,
    required this.includeAdult,
    required this.username,
  });

  final Avatar avatar;
  final int id;
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  final String? name;
  final bool includeAdult;
  final String username;

  static const jsonFactory = _$AccountFromJson;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Avatar {
  Avatar({
    required this.gravatar,
    required this.tmdb,
  });

  final Gravatar gravatar;
  final Tmdb tmdb;

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Gravatar {
  Gravatar({
    required this.hash,
  });

  final String hash;

  factory Gravatar.fromJson(Map<String, dynamic> json) =>
      _$GravatarFromJson(json);
  Map<String, dynamic> toJson() => _$GravatarToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tmdb {
  Tmdb({
    this.avatarPath,
  });

  final String? avatarPath;

  factory Tmdb.fromJson(Map<String, dynamic> json) => _$TmdbFromJson(json);
  Map<String, dynamic> toJson() => _$TmdbToJson(this);
}
