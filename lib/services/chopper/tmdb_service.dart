import 'package:chopper/chopper.dart';
import 'package:movies_flutter/services/models/account.dart';
import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/movie.dart';
import 'package:movies_flutter/services/models/movie_credits.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/models/session.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/services/models/token.dart';

import '../../config.dart';

part 'tmdb_service.chopper.dart';

@ChopperApi()
abstract class TmdbServiceChopper extends ChopperService {
  static TmdbServiceChopper create() => _$TmdbServiceChopper();

  @Get(
    path:
        '3/movie/popular?api_key=${BuildConfigs.tmdbApiKey}&language=en-US&page=1',
  )
  Future<Response<PopularMovies>> getPopularMovies();

  @Get(path: '3/movie/{id}?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Response<Movie>> getMovie(@Path('id') int id);

  @Get(path: '3/movie/{movieId}/credits?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Response<Credits>> getMovieCredits(@Path('movieId') int movieId);

  @Get(
      path:
          '3/tv/popular?api_key=${BuildConfigs.tmdbApiKey}&language=en-US&page=1')
  Future<Response<PopularTv>> getPopularTvShows();

  @Get(
    path:
        '3/discover/movie?api_key=${BuildConfigs.tmdbApiKey}&language=en-US&page=1',
  )
  Future<Response<DiscoverMovies>> discoverMovies();

  @Get(
      path:
          '3/genre/movie/list?api_key=${BuildConfigs.tmdbApiKey}&language=en-US')
  Future<Response<Genres>> getMovieGenres();

  @Get(path: '3/authentication/token/new?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Response<Token>> getNewToken();

  @Post(path: '3/authentication/session/new?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Response<Session>> newSession(@Body() SessionRequest request);

  @Get(
      path:
          '3/account?api_key=${BuildConfigs.tmdbApiKey}&session_id={session_id}')
  Future<Response<Account>> account(@Path('session_id') String sessionId);
}
