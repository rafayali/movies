import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:provider/provider.dart';

import 'ui/home/home_bloc.dart';
import 'ui/home/home_page.dart';
import 'ui/login/auth_page.dart';
import 'ui/login/login_bloc.dart';
import 'ui/login/login_page.dart';
import 'ui/movie_detail/movie_detail_bloc.dart';
import 'ui/movie_detail/movie_detail_page.dart';

class MoviesApp extends StatefulWidget {
  const MoviesApp({
    Key? key,
  }) : super(key: key);

  @override
  _MoviesAppState createState() => _MoviesAppState();
}

class _MoviesAppState extends State<MoviesApp> {
  late final AuthStore _authStore;

  bool _loading = true;

  late bool _isLoggedIn;

  @override
  void initState() {
    super.initState();

    _authStore = Provider.of(context, listen: false);

    _authenticate();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Container();
    }

    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xfffafafa),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: Color(0xFF303030),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.system,
      initialRoute: _resolveInitialRoute(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case LoginPage.routeName:
            return CupertinoPageRoute(
              builder: (context) => Provider<LoginBloc>(
                create: (context) => LoginBloc(
                  Provider.of(context, listen: false),
                  Provider.of(context, listen: false),
                ),
                dispose: (context, value) => value.dispose(),
                child: LoginPage(),
              ),
            );
          case AuthPage.routeName:
            return CupertinoPageRoute<String>(
              builder: (context) =>
                  AuthPage(requestToken: settings.arguments as String),
            );
          case HomePage.routeName:
            return CupertinoPageRoute(
              builder: (context) => Provider(
                create: (context) => HomeBloc(
                  Provider.of(context, listen: false),
                  Provider.of(context, listen: false),
                ),
                dispose: (BuildContext context, HomeBloc value) =>
                    value.dispose(),
                child: HomePage(),
              ),
            );
          case MovieDetailPage.routeName:
            return CupertinoPageRoute(
              builder: (context) => Provider<MovieDetailBloc>(
                create: (context) => MovieDetailBloc(
                  settings.arguments as MovieDetailParams,
                  Provider.of(context, listen: false),
                ),
                dispose: (context, value) => value.dispose(),
                child: MovieDetailPage(),
              ),
            );
        }
      },
    );
  }

  void _authenticate() async {
    setState(() => _loading = true);

    final hasSessionId = await _authStore.getSessionId() != null ? true : false;

    setState(() {
      _isLoggedIn = hasSessionId;
      _loading = false;
    });
  }

  String? _resolveInitialRoute() {
    if (_loading == true) {
      return null;
    }

    if (_isLoggedIn) {
      return HomePage.routeName;
    } else {
      return LoginPage.routeName;
    }
  }
}
