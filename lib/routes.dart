import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/tmdb_service.dart';
import 'ui/home/home_bloc.dart';
import 'ui/home/home_page.dart';
import 'ui/login/auth_page.dart';
import 'ui/login/login_bloc.dart';
import 'ui/login/login_page.dart';
import 'ui/movie_detail/movie_detail_bloc.dart';
import 'ui/movie_detail/movie_detail_page.dart';
import 'utils/auth_store.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        builder: (context) => Provider<LoginBloc>(
          create: (context) => LoginBloc(
            Provider.of(context, listen: false),
            Provider.of(context, listen: false),
          ),
          dispose: (context, value) => value.dispose(),
          child: LoginPage(),
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
        builder: (context) => Provider(
          create: (context) => HomeBloc(
            Provider.of<TmdbService>(context, listen: false),
            Provider.of<AuthStore>(context, listen: false),
          ),
          dispose: (BuildContext context, HomeBloc value) => value.dispose(),
          child: HomePage(),
        ),
        settings: settings,
      );
    case MovieDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => Provider<MovieDetailBloc>(
          create: (context) => MovieDetailBloc(
            settings.arguments as MovieDetailParams,
            Provider.of(context, listen: false),
          ),
          dispose: (context, value) => value.dispose(),
          child: MovieDetailPage(),
        ),
        settings: settings,
      );
  }
}
