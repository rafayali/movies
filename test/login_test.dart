import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_flutter/services/models/session.dart';
import 'package:movies_flutter/services/models/token.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/login/login_bloc.dart';
import 'package:movies_flutter/ui/login/models/login_state.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:test/test.dart';

import 'login_test.mocks.dart';

@GenerateMocks([AuthStore, TmdbService])
void main() {
  test('should return success when both token and sessionId are returned', () {
    final fakeToken = 'abcdef';
    final fakeSessionId = 'abcdef';

    final authStore = MockAuthStore();
    final tmdbServie = MockTmdbService();
    final loginBloc = LoginBloc(authStore, tmdbServie);

    when(tmdbServie.getNewToken()).thenAnswer((_) async => Token(
          success: true,
          expiresAt: '',
          requestToken: fakeToken,
        ));

    when(tmdbServie.newSession(any)).thenAnswer(
      (_) async => Session(success: true, sessionId: fakeSessionId),
    );

    expectLater(
      loginBloc.loginState,
      emitsInOrder([
        LoginState.loading(),
        LoginState.ok(),
      ]),
    );
    expectLater(
      loginBloc.loginState,
      emitsInOrder(
        [
          LoginState.loading(),
          LoginState.ok(),
        ],
      ),
    );
    expectLater(
      loginBloc.tmdbAuthEvent,
      emits(LoginNavigationEvent.authorize(fakeToken)),
    );

    loginBloc.login();

    verify(tmdbServie.getNewToken()).called(1);

    loginBloc.generateSessionId(fakeToken);

    verify(tmdbServie.newSession(any)).called(1);
  });

  test('should fail when error is returned when generating new token', () {
    final fakeToken = 'abcdef';

    final authStore = MockAuthStore();
    final tmdbServie = MockTmdbService();
    final loginBloc = LoginBloc(authStore, tmdbServie);

    when(tmdbServie.getNewToken()).thenAnswer((_) async => Token(
          success: false,
          expiresAt: '',
          requestToken: fakeToken,
        ));

    expectLater(
      loginBloc.loginState,
      emitsInOrder([
        LoginState.loading(),
        LoginState.error(),
      ]),
    );

    loginBloc.login();

    verify(tmdbServie.getNewToken()).called(1);
  });
}
