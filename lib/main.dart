import 'package:flutter/cupertino.dart';
import 'package:movies_flutter/api/tmdb_api.dart';
import 'package:movies_flutter/movie_detail/movie_detail_bloc.dart';
import 'package:movies_flutter/movie_detail/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_bloc.dart';
import 'home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
