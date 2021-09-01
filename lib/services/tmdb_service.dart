import 'dart:async';

import 'package:dio/dio.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/services/models/token.dart';
import 'package:retrofit/retrofit.dart';

import '../config.dart';
import 'models/account.dart';
import 'models/discover/discover_movies.dart';
import 'models/movie.dart';
import 'models/movie_credits.dart';
import 'models/popular_movies.dart';
import 'models/popular_tv.dart';
import 'models/session.dart';

part 'tmdb_service.g.dart';

@RestApi()
abstract class TmdbService {
  factory TmdbService(Dio dio) => _TmdbService(dio);

  @GET(
    '/3/movie/popular?api_key=${BuildConfigs.tmdbApiKey}&language=en-US&page=1',
  )
  Future<PopularMovies> getPopularMovies();

  @GET('/3/movie/{id}?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Movie> getMovie(@Path('id') int id);

  @GET('/3/movie/{movieId}/credits?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Credits> getMovieCredits(@Path('movieId') int movieId);

  @GET('/3/tv/popular?api_key=${BuildConfigs.tmdbApiKey}&language=en-US&page=1')
  Future<PopularTv> getPopularTvShows();

  @GET(
    '/3/discover/movie?api_key=${BuildConfigs.tmdbApiKey}&language=en-US&page=1',
  )
  Future<DiscoverMovies> discoverMovies();

  @GET('/3/genre/movie/list?api_key=${BuildConfigs.tmdbApiKey}&language=en-US')
  Future<Genres> getMovieGenres();

  @GET('/3/authentication/token/new?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Token> getNewToken();

  @POST('/3/authentication/session/new?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Session> newSession(@Body() SessionRequest request);

  @GET('/3/account?api_key=${BuildConfigs.tmdbApiKey}&session_id={session_id}')
  Future<Account> account(@Path('session_id') String sessionId);
}
