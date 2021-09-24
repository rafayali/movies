import 'package:movies_flutter/data/auth_store.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/session/session.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';

class GenerateSessionIdUsecase extends Usecase<String, String> {
  GenerateSessionIdUsecase({
    required this.tmdbService,
    required this.authStore,
  });

  final TmdbService tmdbService;

  final AuthStore authStore;

  @override
  Future<String> execute(String params) async {
    final session =
        (await tmdbService.newSession(SessionRequest(requestToken: params)))
            .body!;
    authStore.setSessionId(session.sessionId!);
    return Future.value(session.sessionId!);
  }
}
