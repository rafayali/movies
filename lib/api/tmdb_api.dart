import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_flutter/api/models/movie_credits.dart';
import 'package:movies_flutter/api/models/popular_movies.dart';
import 'package:movies_flutter/configs.dart';

import 'models/movie.dart';

abstract class TmdbApi {
  Future<PopularMovies> getPopularMovies();

  Future<Movie> getMovie(int id);

  Future<Credits> getMovieCredits(int movieid);
}

class DefaultTmdbApi implements TmdbApi {
  @override
  Future<PopularMovies> getPopularMovies() async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/popular?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1'),
    );

    return PopularMovies.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  @override
  Future<Movie> getMovie(int id) async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/$id?api_key=${BuildConfigs.TmdbApiKey}'),
    );

    return Movie.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  @override
  Future<Credits> getMovieCredits(int movieid) async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/$movieid/credits?api_key=${BuildConfigs.TmdbApiKey}'),
    );

    return Credits.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }
}
