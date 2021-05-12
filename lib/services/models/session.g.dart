// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session(
    success: json['success'] as bool,
    sessionId: json['session_id'] as String?,
  );
}

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'success': instance.success,
      'session_id': instance.sessionId,
    };
