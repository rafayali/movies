import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';

class NewTokenUsecase extends Usecase<Nothing, String> {
  NewTokenUsecase({required this.tmdbService, required this.buildConfig});

  final TmdbService tmdbService;

  final BuildConfig buildConfig;

  @override
  Future<String> execute(Nothing params) async {
    final token = (await tmdbService.getNewToken(buildConfig.tmdbApiKey)).body!;
    if (token.success) {
      return token.requestToken;
    } else {
      throw Exception('Error in getting requestToken');
    }
  }
}
