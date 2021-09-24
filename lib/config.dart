class BuildConfigs {
  static const String baseUrl = 'https://api.themoviedb.org/';
  static const String tmdbApiKey = 'e92ff494dbf0353926ff0be86f89d7ad';
  static const String baseImageUrlW500 = 'https://image.tmdb.org/t/p/w500';
  static const String baseImageUrlW200 = 'https://image.tmdb.org/t/p/w200';
  static const String baseImageUrlOriginal =
      'https://image.tmdb.org/t/p/original';
  static const String gavatarBaseUrl = 'https://www.gravatar.com/avatar/';
}

class BuildConfig {
  BuildConfig({
    required this.baseImageUrlW500,
    required this.baseImageUrlW200,
    required this.baseUrl,
    required this.tmdbApiKey,
    required this.baseImageUrlOriginal,
    required this.gavatarBaseUrl,
  });

  final String baseUrl;
  final String tmdbApiKey;
  final String baseImageUrlW500;
  final String baseImageUrlW200;
  final String baseImageUrlOriginal;
  final String gavatarBaseUrl;
}
