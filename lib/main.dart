import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/api/tmdb_api.dart';
import 'package:movies_flutter/ui/home/home_bloc.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_bloc.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TmdbApi>(create: (context) => TmdbApi()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          backgroundColor: Color(0xfffafafa),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.dark().copyWith(
          backgroundColor: Color(0xFF303030),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        themeMode: ThemeMode.system,
        initialRoute: HomePage.routeName,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case HomePage.routeName:
              return CupertinoPageRoute(
                builder: (context) => Provider(
                  create: (context) => HomeBloc(
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
      ),
    );
  }
}
