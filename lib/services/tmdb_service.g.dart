// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TmdbService implements TmdbService {
  _TmdbService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PopularMovies> getPopularMovies() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        PopularMovies>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/movie/popular?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US&page=1',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PopularMovies.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Movie> getMovie(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Movie>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options,
                    '/3/movie/$id?api_key=e92ff494dbf0353926ff0be86f89d7ad',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Movie.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Credits> getMovieCredits(movieId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        Credits>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/movie/$movieId/credits?api_key=e92ff494dbf0353926ff0be86f89d7ad',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Credits.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PopularTv> getPopularTvShows() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        PopularTv>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/tv/popular?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US&page=1',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PopularTv.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DiscoverMovies> discoverMovies() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        DiscoverMovies>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/discover/movie?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US&page=1',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DiscoverMovies.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Genres> getMovieGenres() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        Genres>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/genre/movie/list?api_key=e92ff494dbf0353926ff0be86f89d7ad&language=en-US',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Genres.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Token> getNewToken() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        Token>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/authentication/token/new?api_key=e92ff494dbf0353926ff0be86f89d7ad',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Token.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Session> newSession(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        Session>(Options(
            method: 'POST', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/authentication/session/new?api_key=e92ff494dbf0353926ff0be86f89d7ad',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Session.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Account> account(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        Account>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/3/account?api_key=e92ff494dbf0353926ff0be86f89d7ad&session_id=$sessionId',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Account.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
