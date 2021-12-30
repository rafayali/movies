part of 'http_client.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class _JsonSerializableConverter extends JsonConverter {
  const _JsonSerializableConverter(
      {required Map<Type, JsonFactory> jsonFactories})
      : _jsonFactories = jsonFactories;

  final Map<Type, JsonFactory> _jsonFactories;

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    final decodedJson =
        jsonDecode((response.body as String)) as Map<String, dynamic>;
    final jsonFactory = _jsonFactories[BodyType];
    return response.copyWith<BodyType>(
      body: jsonFactory!(decodedJson) as BodyType,
    );
  }
}
