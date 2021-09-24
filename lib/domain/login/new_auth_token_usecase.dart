import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';

class NewTokenUsecase extends Usecase<Nothing, String> {
  NewTokenUsecase({required this.tmdbService});

  final TmdbService tmdbService;

  @override
  Future<String> execute(Nothing params) async {
    final token = (await tmdbService.getNewToken()).body!;
    if (token.success) {
      return token.requestToken;
    } else {
      throw Exception('Error in getting requestToken');
    }
  }
}
