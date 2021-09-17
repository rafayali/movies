import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';
import 'package:movies_flutter/ui/login/models/login_state.dart';

class LoginViewModel extends ChangeNotifier {
  LoginViewModel({
    required AuthStore authStore,
    required TmdbService chopperTmdbSerivce,
  })  : _authStore = authStore,
        _chopperTmdbService = chopperTmdbSerivce;

  final TmdbService _chopperTmdbService;

  final AuthStore _authStore;

  LoginState _state = const LoginState.ok();
  LoginState get state => _state;

  final _events = StreamController<LoginEvent>.broadcast();
  Stream<LoginEvent> get events => _events.stream;

  Future<void> login() async {
    _state = const LoginState.loading();

    notifyListeners();

    final result = await Result.capture(_chopperTmdbService.getNewToken());

    if (result.isError) {
      _state = const LoginState.error();
      notifyListeners();
      return;
    }

    final token = result.asValue!.value.body!;

    if (token.success == true) {
      _events.add(LoginEvent.authorize(token.requestToken));
    } else {
      _state = const LoginState.error();
    }

    notifyListeners();
  }

  Future<void> generateSessionId(String requestToken) async {
    final result = await Result.capture(
      _chopperTmdbService.newSession(
        SessionRequest(requestToken: requestToken),
      ),
    );

    _state = const LoginState.loading();
    notifyListeners();

    if (result.isError) {
      _state = const LoginState.ok();
      notifyListeners();
      return;
    }

    final session = result.asValue!.value.body!;

    if (!session.success) {
      _state = const LoginState.ok();
      notifyListeners();
      return;
    }

    await _authStore.setSessionId(session.sessionId!);

    _events.add(LoginEvent.success(session.sessionId!));
  }

  @override
  void dispose() {
    _events.close();
    super.dispose();
  }
}
