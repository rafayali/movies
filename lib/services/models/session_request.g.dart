// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionRequest _$SessionRequestFromJson(Map<String, dynamic> json) {
  return SessionRequest(
    requestToken: json['request_token'] as String,
  );
}

Map<String, dynamic> _$SessionRequestToJson(SessionRequest instance) =>
    <String, dynamic>{
      'request_token': instance.requestToken,
    };
