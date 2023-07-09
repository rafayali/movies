import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/login/view/auth_page.dart';

class AuthRoute extends MaterialPageRoute {
  AuthRoute({required RouteSettings settings})
      : super(
          builder: (context) =>
              AuthPage(requestToken: settings.arguments as String),
          settings: settings,
        );
}
