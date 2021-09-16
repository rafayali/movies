import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:movies_flutter/ui/home/home_viewmodel.dart';
import 'package:movies_flutter/ui/login/login_viewmodel.dart';
import 'package:movies_flutter/ui/movie_detail/models/params.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_viewmodel.dart';
import 'package:provider/provider.dart';

import '../login/auth_page.dart';
import '../login/login_page.dart';
import '../movie_detail/movie_detail_page.dart';

List<Route<dynamic>> generateInitialRoute(String initialRoute) {
  switch (initialRoute) {
    case HomePage.routeName:
      return [
        generateRoute(const RouteSettings(name: HomePage.routeName))!,
      ];
    case LoginPage.routeName:
      return [
        generateRoute(const RouteSettings(name: LoginPage.routeName))!,
      ];
    default:
      return List.empty();
  }
}

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider<LoginViewModel>(
          create: (context) => LoginViewModel(
            authStore: context.read(),
            chopperTmdbSerivce: context.read(),
          ),
          child: const LoginPage(),
        ),
        settings: settings,
      );
    case AuthPage.routeName:
      return MaterialPageRoute<String>(
        builder: (context) =>
            AuthPage(requestToken: settings.arguments as String),
        settings: settings,
      );
    case HomePage.routeName:
      return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider(
                create: (context) => HomeViewModel(
                  tmdbService: context.read(),
                  authStore: context.read(),
                ),
                child: const HomePage(),
              ),
          settings: const RouteSettings());
    case MovieDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider<MovieDetailViewModel>(
          create: (context) => MovieDetailViewModel(
            params: settings.arguments as MovieDetailParams,
            tmdbService: context.read(),
          ),
          child: const MovieDetailPage(),
        ),
        settings: settings,
      );
  }
}
