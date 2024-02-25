import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/ui/login/view/auth_page.dart';

class AuthRoute extends GoRoute {
  AuthRoute()
      : super(
          name: 'auth',
          path: 'auth',
          pageBuilder: (context, state) => MaterialPage(
            child: AuthPage(
              requestToken: state.uri.queryParameters['requestToken']!,
            ),
          ),
        );
}
