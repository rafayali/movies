import 'package:flutter/foundation.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:rxdart/rxdart.dart';
import 'package:async/async.dart';

import 'models/login_state.dart';

class LoginBloc {
  LoginBloc(this._authStore, this._tmdbService);

  final TmdbService _tmdbService;

  final AuthStore _authStore;

  final _compositeSubscription = CompositeSubscription();

  final _loginState = BehaviorSubject<LoginState>();
  Stream<LoginState> get loginState => _loginState;

  final _tmdbAuthEvent = PublishSubject<LoginNavigationEvent>();
  Stream<LoginNavigationEvent> get tmdbAuthEvent => _tmdbAuthEvent;

  void login() async {
    _loginState.add(LoginState.loading());

    final token = await _tmdbService.getNewToken();

    if (token.success == true) {
      _tmdbAuthEvent.add(LoginNavigationEvent.authorize(token.requestToken));
    } else {
      _loginState.add(LoginState.error());
    }
  }

  void generateSessionId(String requestToken) async {
    final response = await Result.capture(
      _tmdbService.newSession(
        SessionRequest(requestToken: requestToken),
      ),
    );

    _loginState.add(LoginState.ok());

    if (!response.isValue) {
      debugPrint('error creating new session');
      return;
    }

    final session = response.asValue!.value;

    if (session.success) {
      await _authStore.setSessionId(session.sessionId!);

      _tmdbAuthEvent.add(LoginNavigationEvent.success(session.sessionId!));
    }
  }

  void dispose() {
    _compositeSubscription.dispose();
    _loginState.close();
    _tmdbAuthEvent.close();
  }
}
