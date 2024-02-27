import 'dart:async';

import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/core/viewmodel.dart';
import 'package:movies_flutter/domain/login/generate_session_id_usecase.dart';
import 'package:movies_flutter/presentation/login/models/login_models.dart';
import 'package:movies_flutter/domain/login/new_auth_token_usecase.dart';

class LoginViewModel extends ViewModel<LoginState> {
  LoginViewModel({
    required NewRequestTokenUsecase newTokenUseCase,
    required GenerateSessionIdUsecase generateSessionIdUsecase,
  })  : _newTokenUseCase = newTokenUseCase,
        _generateSessionIdUsecase = generateSessionIdUsecase,
        super(const LoginState.ok());

  final NewRequestTokenUsecase _newTokenUseCase;
  final GenerateSessionIdUsecase _generateSessionIdUsecase;

  final _events = StreamController<LoginEvent>.broadcast();
  Stream<LoginEvent> get events => _events.stream;

  Future<void> login() async {
    setState(const LoginState.loading());

    final token = await _newTokenUseCase.invoke(nothing);

    if (token.isError) {
      setState(const LoginState.ok());
      return;
    }

    _events.add(LoginEvent.authorize(token.asValue!.value));
  }

  Future<void> generateSessionId(String requestToken) async {
    final sessionId = await _generateSessionIdUsecase.invoke(requestToken);

    if (sessionId.isError) {
      setState(const LoginState.ok());
    } else {
      _events.add(LoginEvent.success(sessionId.asValue!.value));
    }
  }

  @override
  void dispose() {
    _events.close();
    super.dispose();
  }
}
