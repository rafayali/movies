import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_flutter/services/models/token.dart';
import 'package:movies_flutter/services/models/session_request.dart';
import 'package:movies_flutter/services/models/session.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/movie_credits.dart';
import 'package:movies_flutter/services/models/movie.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/account.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:movies_flutter/ui/login/auth_page.dart';
import 'package:movies_flutter/ui/login/login_bloc.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:provider/provider.dart';

import 'models/login_state.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();

    _loginBloc = Provider.of(context, listen: false);

    _loginBloc.tmdbAuthEvent.listen((event) async {
      await event.when(
        authorize: (requestToken) async {
          await Navigator.of(context)
              .pushNamed<String>(AuthPage.routeName, arguments: requestToken);
          _loginBloc.generateSessionId(requestToken);
        },
        success: (sessionId) {
          Navigator.of(context).popAndPushNamed(HomePage.routeName);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: SvgPicture.asset(
                  'assets/tmdb_blue_square_2.svg',
                ),
              ),
            ),
            StreamBuilder<LoginState>(
              stream: _loginBloc.loginState,
              initialData: LoginState.ok('Login'),
              builder: (context, snapshot) {
                return snapshot.data!.when(
                  loading: (message) {
                    return ElevatedButton(
                      onPressed: null,
                      child: Text(message),
                    );
                  },
                  ok: (message) => ElevatedButton(
                    onPressed: _onPressLogin,
                    child: Text(message),
                  ),
                  error: (message) => ElevatedButton(
                    onPressed: _onPressLogin,
                    child: Text(message),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onPressLogin() {
    _loginBloc.login();
  }
}

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xfffafafa),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: Color(0xFF303030),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.system,
      home: Provider<LoginBloc>(
        create: (context) => LoginBloc(_FakeAuthStore(), _FakeTmdbService()),
        dispose: (context, value) => value.dispose(),
        child: LoginPage(),
      ),
    ),
  );
}

class _FakeAuthStore implements AuthStore {
  @override
  Future<String?> getSessionId() {
    return Future.value(null);
  }

  @override
  Future<void> setSessionId(String value) {
    return Future.value();
  }
}

class _FakeTmdbService implements TmdbService {
  @override
  Future<Account> account(String sessionId) {
    return Future.value();
  }

  @override
  Future<DiscoverMovies> discoverMovies() {
    return Future.value();
  }

  @override
  Future<Movie> getMovie(int id) {
    return Future.value();
  }

  @override
  Future<Credits> getMovieCredits(int movieId) {
    throw UnimplementedError();
  }

  @override
  Future<Genres> getMovieGenres() {
    return Future.value();
  }

  @override
  Future<Token> getNewToken() {
    return Future.value();
  }

  @override
  Future<PopularMovies> getPopularMovies() {
    return Future.value();
  }

  @override
  Future<PopularTv> getPopularTvShows() {
    return Future.value();
  }

  @override
  Future<Session> newSession(SessionRequest request) {
    return Future.value();
  }
}
