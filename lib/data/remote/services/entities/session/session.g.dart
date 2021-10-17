// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionRequest _$SessionRequestFromJson(Map<String, dynamic> json) =>
    SessionRequest(
      requestToken: json['request_token'] as String,
    );

Map<String, dynamic> _$SessionRequestToJson(SessionRequest instance) =>
    <String, dynamic>{
      'request_token': instance.requestToken,
    };

Session _$SessionFromJson(Map<String, dynamic> json) => Session(
      success: json['success'] as bool,
      sessionId: json['session_id'] as String?,
    );

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'success': instance.success,
      'session_id': instance.sessionId,
    };
