import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/auth_store.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/session/session.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';

class GenerateSessionIdUsecase extends UseCase<String, String> {
  GenerateSessionIdUsecase({
    required this.tmdbService,
    required this.authStore,
    required this.buildConfig,
  });

  final TmdbService tmdbService;

  final AuthStore authStore;

  final BuildConfig buildConfig;

  @override
  Future<String> execute(String params) async {
    final session = (await tmdbService.newSession(
      buildConfig.tmdbApiKey,
      SessionRequest(requestToken: params),
    ));
    authStore.setSessionId(session.body!.sessionId!);
    return Future.value(session.body!.sessionId!);
  }
}
