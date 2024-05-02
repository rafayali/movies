import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/presentation/login/view/auth_page.dart';

class AuthRoute extends GoRoute {
  AuthRoute()
      : super(
          name: routeName,
          path: 'auth',
          pageBuilder: (context, state) => MaterialPage(
            child: AuthPage(
              requestToken: state.uri.queryParameters[requestTokenParam]!,
            ),
          ),
        );

  static const routeName = 'auth';
  static const requestTokenParam = 'requestToken';
}
