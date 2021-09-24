import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SessionRequest {
  SessionRequest({required this.requestToken});

  final String requestToken;

  factory SessionRequest.fromJson(Map<String, dynamic> json) =>
      _$SessionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SessionRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Session {
  Session({required this.success, required this.sessionId});

  final bool success;
  final String? sessionId;

  static const jsonFactory = _$SessionFromJson;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
