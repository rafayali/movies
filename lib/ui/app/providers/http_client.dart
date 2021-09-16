// ignore: unused_import
import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:movies_flutter/services/chopper/tmdb_service.dart';
import 'package:movies_flutter/services/models/account.dart';
import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/movie.dart';
import 'package:movies_flutter/services/models/movie_credits.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/models/session.dart';
import 'package:movies_flutter/services/models/token.dart';

part 'json_factories.dart';
part 'services.dart';

class ChopperHttpClient {
  ChopperHttpClient(String baseUrl) {
    client = ChopperClient(
      baseUrl: baseUrl,
      services: _services,
      interceptors: [HttpLoggingInterceptor()],
      converter: _JsonSerializableConverter(jsonFactories: _jsonFactories),
    );
  }

  late final ChopperClient client;
}

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
