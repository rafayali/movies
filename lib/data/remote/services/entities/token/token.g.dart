// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
    success: json['success'] as bool,
    expiresAt: json['expires_at'] as String,
    requestToken: json['request_token'] as String,
  );
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'success': instance.success,
      'expires_at': instance.expiresAt,
      'request_token': instance.requestToken,
    };
