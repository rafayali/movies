import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_flutter/api/models/discover/discover_movies.dart';
import 'package:movies_flutter/api/models/movie_credits.dart';
import 'package:movies_flutter/api/models/popular_movies.dart';
import 'package:movies_flutter/api/models/popular_tv.dart';
import 'package:movies_flutter/configs.dart';

import 'models/movie.dart';

class TmdbApi {
  Future<PopularMovies> getPopularMovies() async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/popular?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1'),
    );
    return PopularMovies.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  Future<Movie> getMovie(int id) async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/$id?api_key=${BuildConfigs.TmdbApiKey}'),
    );
    return Movie.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  Future<Credits> getMovieCredits(int movieId) async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/$movieId/credits?api_key=${BuildConfigs.TmdbApiKey}'),
    );
    return Credits.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  Future<PopularTv> getPopularTvShows() async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/tv/popular?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1'),
    );
    return PopularTv.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  Future<DiscoverMovies> discoverMovies() async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/discover/movie?api_key=${BuildConfigs.TmdbApiKey}&language=en-US&page=1'),
    );
    return DiscoverMovies.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }
}
