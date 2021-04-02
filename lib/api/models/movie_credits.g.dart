// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credits _$CreditsFromJson(Map<String, dynamic> json) {
  return Credits(
    id: json['id'] as int,
    cast: (json['cast'] as List<dynamic>)
        .map((e) => Cast.fromJson(e as Map<String, dynamic>))
        .toList(),
    crew: (json['crew'] as List<dynamic>)
        .map((e) => Cast.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CreditsToJson(Credits instance) => <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };

Cast _$CastFromJson(Map<String, dynamic> json) {
  return Cast(
    adult: json['adult'] as bool?,
    gender: json['gender'] as int,
    id: json['id'] as int,
    knownForDepartment: json['known_for_department'] as String?,
    name: json['name'] as String,
    originalName: json['original_name'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    profilePath: json['profile_path'] as String?,
    castId: json['cast_id'] as int?,
    character: json['character'] as String?,
    creditId: json['credit_id'] as String?,
    order: json['order'] as int?,
    department: json['department'] as String?,
    job: json['job'] as String?,
  );
}

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
      'cast_id': instance.castId,
      'character': instance.character,
      'credit_id': instance.creditId,
      'order': instance.order,
      'department': instance.department,
      'job': instance.job,
    };
