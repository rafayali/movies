// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    avatar: Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    id: json['id'] as int,
    iso6391: json['iso_639_1'] as String,
    iso31661: json['iso_3166_1'] as String,
    name: json['name'] as String?,
    includeAdult: json['include_adult'] as bool,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'iso_639_1': instance.iso6391,
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
      'include_adult': instance.includeAdult,
      'username': instance.username,
    };

Avatar _$AvatarFromJson(Map<String, dynamic> json) {
  return Avatar(
    gravatar: Gravatar.fromJson(json['gravatar'] as Map<String, dynamic>),
    tmdb: Tmdb.fromJson(json['tmdb'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'gravatar': instance.gravatar,
      'tmdb': instance.tmdb,
    };

Gravatar _$GravatarFromJson(Map<String, dynamic> json) {
  return Gravatar(
    hash: json['hash'] as String,
  );
}

Map<String, dynamic> _$GravatarToJson(Gravatar instance) => <String, dynamic>{
      'hash': instance.hash,
    };

Tmdb _$TmdbFromJson(Map<String, dynamic> json) {
  return Tmdb(
    avatarPath: json['avatar_path'] as String?,
  );
}

Map<String, dynamic> _$TmdbToJson(Tmdb instance) => <String, dynamic>{
      'avatar_path': instance.avatarPath,
    };
