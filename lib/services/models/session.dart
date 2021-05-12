import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Session {
  Session({required this.success, required this.sessionId});

  final bool success;
  final String? sessionId;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
