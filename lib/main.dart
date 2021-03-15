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
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
              builder: (context) => Provider(
                create: (context) => HomeBloc(DefaultTmdbApi()),
                child: HomePage(),
              ),
            );
          case MovieDetailPage.routeName:
            return CupertinoPageRoute(
              builder: (context) => MovieDetailPage(
                MovieDetailBloc(
                  settings.arguments as MovieDetailParams,
                  DefaultTmdbApi(),
                ),
              ),
            );
        }

        return null;
      },
    );
  }
}
