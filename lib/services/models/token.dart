import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Token {
  Token({
    required this.success,
    required this.expiresAt,
    required this.requestToken,
  });

  final bool success;
  final String expiresAt;
  final String requestToken;

  static const jsonFactory = _$TokenFromJson;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
