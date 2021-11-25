class BuildConfig {
  BuildConfig._({
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

  factory BuildConfig.create() => BuildConfig._(
        baseImageUrlW500: 'https://image.tmdb.org/t/p/w500',
        baseImageUrlW200: 'https://image.tmdb.org/t/p/w200',
        baseUrl: 'https://api.themoviedb.org/',
        tmdbApiKey: 'e92ff494dbf0353926ff0be86f89d7ad',
        baseImageUrlOriginal: 'https://image.tmdb.org/t/p/original',
        gavatarBaseUrl: 'https://www.gravatar.com/avatar/',
      );
}
