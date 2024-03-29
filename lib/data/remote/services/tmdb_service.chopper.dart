// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$TmdbService extends TmdbService {
  _$TmdbService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = TmdbService;

  @override
  Future<Response<PopularMovies>> getPopularMovies(String apiKey) {
    final Uri $url =
        Uri.parse('3/movie/popular?api_key=${apiKey}&language=en-US&page=1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PopularMovies, PopularMovies>($request);
  }

  @override
  Future<Response<Movie>> getMovie(
    String apiKey,
    int id,
  ) {
    final Uri $url = Uri.parse('3/movie/${id}?api_key=${apiKey}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Movie, Movie>($request);
  }

  @override
  Future<Response<Credits>> getMovieCredits(
    String apiKey,
    int movieId,
  ) {
    final Uri $url = Uri.parse('3/movie/${movieId}/credits?api_key=${apiKey}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Credits, Credits>($request);
  }

  @override
  Future<Response<PopularTv>> getPopularTvShows(String apiKey) {
    final Uri $url =
        Uri.parse('3/tv/popular?api_key=${apiKey}&language=en-US&page=1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PopularTv, PopularTv>($request);
  }

  @override
  Future<Response<DiscoverMovies>> discoverMovies(String apiKey) {
    final Uri $url =
        Uri.parse('3/discover/movie?api_key=${apiKey}&language=en-US&page=1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<DiscoverMovies, DiscoverMovies>($request);
  }

  @override
  Future<Response<Genres>> getMovieGenres(String apiKey) {
    final Uri $url =
        Uri.parse('3/genre/movie/list?api_key=${apiKey}&language=en-US');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Genres, Genres>($request);
  }

  @override
  Future<Response<Token>> getNewToken(String apiKey) {
    final Uri $url = Uri.parse('3/authentication/token/new?api_key=${apiKey}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<Session>> newSession(
    String apiKey,
    SessionRequest request,
  ) {
    final Uri $url =
        Uri.parse('3/authentication/session/new?api_key=${apiKey}');
    final $body = request;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Session, Session>($request);
  }

  @override
  Future<Response<Account>> account(
    String apiKey,
    String sessionId,
  ) {
    final Uri $url =
        Uri.parse('3/account?api_key=${apiKey}&session_id=${sessionId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Account, Account>($request);
  }

  @override
  Future<Response<TvShow>> getTvShow(
    String apiKey,
    int id,
  ) {
    final Uri $url = Uri.parse('3/tv/${id}?api_key=${apiKey}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TvShow, TvShow>($request);
  }

  @override
  Future<Response<Credits>> getTvShowCredits(
    String apiKey,
    int id,
  ) {
    final Uri $url = Uri.parse('3/tv/${id}/credits?api_key=${apiKey}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Credits, Credits>($request);
  }

  @override
  Future<Response<MultiSearch>> multiSearch(
    String apiKey,
    String query,
    int page,
  ) {
    final Uri $url = Uri.parse(
        '3/search/multi?query=${query}&page=${page}&api_key=${apiKey}&language=en-US');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MultiSearch, MultiSearch>($request);
  }
}
