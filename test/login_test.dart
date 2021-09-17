import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/services/models/session.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/services/models/token.dart';
import 'package:movies_flutter/services/tmdb_service.dart' as chopper;
import 'package:movies_flutter/ui/login/login_viewmodel.dart';
import 'package:movies_flutter/ui/login/models/login_state.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';

import 'utils/random_string.dart';

void main() {
  _MockAuthStore authStore = _MockAuthStore();
  _MockTmdbService tmdbService = _MockTmdbService();
  late LoginViewModel loginViewModel;

  setUpAll(() {
    registerFallbackValue(_FakeSessionRequest());
  });

  setUp(() async {
    loginViewModel = LoginViewModel(
      authStore: authStore,
      chopperTmdbSerivce: tmdbService,
    );
  });

  test('should return success when both token and sessionId are returned',
      () async {
    final fakeToken = randomString(8);
    final fakeSessionId = randomString(8);

    when(() => tmdbService.getNewToken()).thenAnswer((_) async => Response(
        http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
        Token(
          success: true,
          expiresAt: randomString(8),
          requestToken: fakeToken,
        )));

    when(() => tmdbService.newSession(any())).thenAnswer(
      (_) async => Response<Session>(
        http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
        Session(success: true, sessionId: fakeSessionId),
      ),
    );

    when(() => authStore.setSessionId(any()))
        .thenAnswer((_) => (Future.value()));

    expectLater(
      loginViewModel.events,
      emits(LoginEvent.authorize(fakeToken)),
    );

    expect(loginViewModel.state, equals(const LoginState.ok()));

    await loginViewModel.login();

    expect(loginViewModel.state, equals(const LoginState.loading()));
    verify(() => tmdbService.getNewToken()).called(1);

    await loginViewModel.generateSessionId(fakeToken);

    expect(loginViewModel.state, equals(const LoginState.loading()));
    verify(() => tmdbService.newSession(any())).called(1);
  });

  test('should fail when error is returned when generating new token',
      () async {
    final fakeToken = randomString(8);
    final states = <LoginState>[];

    when(() => tmdbService.getNewToken()).thenAnswer(
      (_) async => Response<Token>(
        http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
        Token(
          success: false,
          expiresAt: '',
          requestToken: fakeToken,
        ),
      ),
    );

    loginViewModel.addListener(() {
      states.add(loginViewModel.state);
    });

    await loginViewModel.login();

    verify(() => tmdbService.getNewToken()).called(1);
    expect(
      states,
      containsAllInOrder([
        const LoginState.loading(),
        const LoginState.error(),
      ]),
    );
  });

  tearDown(() {
    loginViewModel.dispose();
    reset(tmdbService);
    reset(authStore);
  });
}

class _MockAuthStore extends Mock implements AuthStore {}

class _MockTmdbService extends Mock implements chopper.TmdbService {}

class _FakeSessionRequest extends Fake implements SessionRequest {}
