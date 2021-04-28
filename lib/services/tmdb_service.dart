import 'package:dio/dio.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:retrofit/retrofit.dart';

import '../configs.dart';
import 'models/discover/discover_movies.dart';
import 'models/movie.dart';
import 'models/movie_credits.dart';
import 'models/popular_movies.dart';
import 'models/popular_tv.dart';

part 'tmdb_service.g.dart';

@RestApi()
abstract class TmdbService {
  factory TmdbService(Dio dio) => _TmdbService(dio);

  @GET(
    '/3/movie/popular?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1',
  )
  Future<PopularMovies> getPopularMovies();

  @GET('/3/movie/{id}?api_key=${BuildConfigs.TmdbApiKey}')
  Future<Movie> getMovie(@Path('id') int id);

  @GET('/3/movie/{movieId}/credits?api_key=${BuildConfigs.TmdbApiKey}')
  Future<Credits> getMovieCredits(@Path('movieId') int movieId);

  @GET('/3/tv/popular?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1')
  Future<PopularTv> getPopularTvShows();

  @GET(
    '/3/discover/movie?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1',
  )
  Future<DiscoverMovies> discoverMovies();

  @GET('/3/genre/movie/list?api_key=${BuildConfigs.TmdbApiKey}&language=en-US')
  Future<Genres> getMovieGenres();
}
