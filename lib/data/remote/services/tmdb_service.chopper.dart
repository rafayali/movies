// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$TmdbService extends TmdbService {
  _$TmdbService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TmdbService;

  @override
  Future<Response<PopularMovies>> getPopularMovies() {
    final $url =
        '3/movie/popular?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US&page=1';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PopularMovies, PopularMovies>($request);
  }

  @override
  Future<Response<Movie>> getMovie(int id) {
    final $url = '3/movie/$id?api_key=e92ff494dbf0353926ff0be86f89d7ad';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Movie, Movie>($request);
  }

  @override
  Future<Response<Credits>> getMovieCredits(int movieId) {
    final $url =
        '3/movie/$movieId/credits?api_key=e92ff494dbf0353926ff0be86f89d7ad';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Credits, Credits>($request);
  }

  @override
  Future<Response<PopularTv>> getPopularTvShows() {
    final $url =
        '3/tv/popular?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US&page=1';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PopularTv, PopularTv>($request);
  }

  @override
  Future<Response<DiscoverMovies>> discoverMovies() {
    final $url =
        '3/discover/movie?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US&page=1';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DiscoverMovies, DiscoverMovies>($request);
  }

  @override
  Future<Response<Genres>> getMovieGenres() {
    final $url =
        '3/genre/movie/list?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Genres, Genres>($request);
  }

  @override
  Future<Response<Token>> getNewToken() {
    final $url =
        '3/authentication/token/new?api_key=e92ff494dbf0353926ff0be86f89d7ad';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<Session>> newSession(SessionRequest request) {
    final $url =
        '3/authentication/session/new?api_key=e92ff494dbf0353926ff0be86f89d7ad';
    final $body = request;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Session, Session>($request);
  }

  @override
  Future<Response<Account>> account(String sessionId) {
    final $url =
        '3/account?api_key=e92ff494dbf0353926ff0be86f89d7ad&session_id=$sessionId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Account, Account>($request);
  }

  @override
  Future<Response<TvShow>> getTvShow(int id) {
    final $url = '3/tv/$id?api_key=e92ff494dbf0353926ff0be86f89d7ad';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TvShow, TvShow>($request);
  }

  @override
  Future<Response<Credits>> getTvShowCredits(int id) {
    final $url = '3/tv/$id/credits?api_key=e92ff494dbf0353926ff0be86f89d7ad';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Credits, Credits>($request);
  }

  @override
  Future<Response<MultiSearch>> multiSearch(String query, int page) {
    final $url =
        '3/search/multi?query=$query&page=$page&api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MultiSearch, MultiSearch>($request);
  }
}
