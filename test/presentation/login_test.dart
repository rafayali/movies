import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/domain/login/generate_session_id_usecase.dart';
import 'package:movies_flutter/domain/login/new_auth_token_usecase.dart';
import 'package:movies_flutter/ui/login/models/login_models.dart';
import 'package:movies_flutter/data/remote/services/entities/session/session.dart';
import 'package:movies_flutter/data/remote/services/entities/token/token.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart'
    as chopper;
import 'package:movies_flutter/data/local/auth_store.dart';
import 'package:movies_flutter/ui/login/viewmodel/login_viewmodel.dart';

import '../utils/random_string.dart';

void main() {
  _MockAuthStore authStore = _MockAuthStore();
  _MockTmdbService tmdbService = _MockTmdbService();
  late LoginViewModel loginViewModel;
  final BuildConfig buildConfig = BuildConfig.create();

  group('when login button is tapped', () {
    setUpAll(() {
      registerFallbackValue(_FakeSessionRequest());
    });

    setUp(() {
      loginViewModel = LoginViewModel(
        newTokenUseCase: NewRequestTokenUsecase(
          tmdbService: tmdbService,
          buildConfig: buildConfig,
        ),
        generateSessionIdUsecase: GenerateSessionIdUsecase(
          authStore: authStore,
          tmdbService: tmdbService,
          buildConfig: buildConfig,
        ),
      );
    });

    tearDown(() {
      loginViewModel.dispose();
      reset(tmdbService);
      reset(authStore);
    });

    test('it should return success when both token and sessionId are returned',
        () async {
      final fakeToken = randomString(8);
      final fakeSessionId = randomString(8);

      when(() => tmdbService.getNewToken(any()))
          .thenAnswer((_) async => Response(
              http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
              Token(
                success: true,
                expiresAt: randomString(8),
                requestToken: fakeToken,
              )));

      when(() => tmdbService.newSession(any(), any())).thenAnswer(
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
      verify(() => tmdbService.getNewToken(any())).called(1);

      await loginViewModel.generateSessionId(fakeToken);

      expect(loginViewModel.state, equals(const LoginState.loading()));
      verify(() => tmdbService.newSession(any(), any())).called(1);
    });

    test('it should fail when error is returned on generating new token',
        () async {
      final fakeToken = randomString(8);
      final states = <LoginState>[];

      when(() => tmdbService.getNewToken(any())).thenAnswer(
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

      verify(() => tmdbService.getNewToken(any())).called(1);
      expect(
        states,
        containsAllInOrder([
          const LoginState.loading(),
          const LoginState.ok(),
        ]),
      );
    });
  });
}

class _MockAuthStore extends Mock implements AuthStore {}

class _MockTmdbService extends Mock implements chopper.TmdbService {}

class _FakeSessionRequest extends Fake implements SessionRequest {}
