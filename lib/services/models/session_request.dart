import 'package:json_annotation/json_annotation.dart';

part 'session_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SessionRequest {
  SessionRequest({required this.requestToken});

  final String requestToken;

  factory SessionRequest.fromJson(Map<String, dynamic> json) =>
      _$SessionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SessionRequestToJson(this);
}
