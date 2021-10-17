import 'package:chopper/chopper.dart';
import 'package:movies_flutter/data/remote/services/entities/account/account.dart';
import 'package:movies_flutter/data/remote/services/entities/discover_movies/discover_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/genres/genres.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart';
import 'package:movies_flutter/data/remote/services/entities/mutli_search/multi_search.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_movies/popular_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_tv/popular_tv.dart';
import 'package:movies_flutter/data/remote/services/entities/session/session.dart';
import 'package:movies_flutter/data/remote/services/entities/token/token.dart';
import 'package:movies_flutter/data/remote/services/entities/tv_show/tv_show.dart';

import '../../../config.dart';

part 'tmdb_service.chopper.dart';

@ChopperApi()
abstract class TmdbService extends ChopperService {
  static TmdbService create() => _$TmdbService();

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

  @Get(path: '3/tv/{id}?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Response<TvShow>> getTvShow(@Path('id') int id);

  @Get(path: '3/tv/{id}/credits?api_key=${BuildConfigs.tmdbApiKey}')
  Future<Response<Credits>> getTvShowCredits(@Path('id') int id);

  @Get(
      path:
          '3/search/multi?query={query}&page={page}&api_key=${BuildConfigs.tmdbApiKey}&language=en-US')
  Future<Response<MultiSearch>> multiSearch(
    @Path('query') String query,
    @Path('page') int page,
  );
}
