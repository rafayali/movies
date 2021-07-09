import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/configs.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:provider/provider.dart';

import 'services/tmdb_service.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Dio>(create: (context) {
          final dio = Dio(
            BaseOptions(
              baseUrl: BuildConfigs.BaseUrl,
              sendTimeout: Duration(seconds: 10).inMilliseconds,
              connectTimeout: Duration(seconds: 10).inMilliseconds,
              receiveTimeout: Duration(seconds: 10).inMilliseconds,
            ),
          );
          (dio.transformer as DefaultTransformer).jsonDecodeCallback =
              _parseJson;
          dio.interceptors
              .add(LogInterceptor(requestBody: true, responseBody: true));
          return dio;
        }),
        Provider(
          create: (context) => TmdbService(
            Provider.of(context, listen: false),
          ),
        ),
        Provider<AuthStore>(create: (context) => AuthStore()),
      ],
      child: MoviesApp(),
    );
  }
}

dynamic parseAndDecode(String response) {
  return jsonDecode(response);
}

Future _parseJson(String text) {
  return compute(parseAndDecode, text);
}
