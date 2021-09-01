import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';
import 'package:movies_flutter/ui/login/models/login_state.dart';

class LoginViewModel extends ChangeNotifier {
  LoginViewModel({
    required TmdbService tmdbService,
    required AuthStore authStore,
  })  : _tmdbService = tmdbService,
        _authStore = authStore;

  final TmdbService _tmdbService;

  final AuthStore _authStore;

  LoginState _state = const LoginState.ok();
  LoginState get state => _state;

  final _events = StreamController<LoginEvent>.broadcast();
  Stream<LoginEvent> get events => _events.stream;

  Future<void> login() async {
    _state = const LoginState.loading();

    notifyListeners();

    final token = await _tmdbService.getNewToken();

    if (token.success == true) {
      _events.add(LoginEvent.authorize(token.requestToken));
    } else {
      _state = const LoginState.error();
    }

    notifyListeners();
  }

  Future<void> generateSessionId(String requestToken) async {
    final response = await Result.capture(
      _tmdbService.newSession(SessionRequest(requestToken: requestToken)),
    );

    _state = const LoginState.loading();
    notifyListeners();

    if (!response.isValue) {
      _state = const LoginState.ok();
      notifyListeners();
      return;
    }

    final session = response.asValue!.value;

    if (session.success) {
      await _authStore.setSessionId(session.sessionId!);

      _events.add(LoginEvent.success(session.sessionId!));
    }
  }

  @override
  void dispose() {
    _events.close();
    super.dispose();
  }
}
