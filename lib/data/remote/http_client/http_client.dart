// ignore: unused_import
import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:movies_flutter/data/remote/services/entities/mutli_search/multi_search.dart';
import 'package:movies_flutter/data/remote/services/entities/tv_show/tv_show.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/data/remote/services/entities/account/account.dart';
import 'package:movies_flutter/data/remote/services/entities/discover_movies/discover_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/genres/genres.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_movies/popular_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_tv/popular_tv.dart';
import 'package:movies_flutter/data/remote/services/entities/session/session.dart';
import 'package:movies_flutter/data/remote/services/entities/token/token.dart';

part 'json_factories.dart';
part 'json_serializable_converter.dart';

class ChopperHttpClient {
  ChopperHttpClient(String baseUrl) {
    client = ChopperClient(
      baseUrl: baseUrl,
      services: [TmdbService.create()],
      interceptors: [HttpLoggingInterceptor()],
      converter: _JsonSerializableConverter(jsonFactories: _jsonFactories),
    );
  }

  late final ChopperClient client;
}
