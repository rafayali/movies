part of 'http_client.dart';

final _jsonFactories = <Type, JsonFactory>{
  PopularMovies: PopularMovies.jsonFactory,
  Movie: Movie.jsonFactory,
  Credits: Credits.jsonFactory,
  PopularTv: PopularTv.jsonFactory,
  DiscoverMovies: DiscoverMovies.jsonFactory,
  Genres: Genres.jsonFactory,
  Token: Token.jsonFactory,
  Account: Account.jsonFactory,
  Session: Session.jsonFactory,
};
