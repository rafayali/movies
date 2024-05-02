import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/app/router/routes/auth_route.dart';
import 'package:movies_flutter/app/router/routes/movie_detail_route.dart';
import 'package:movies_flutter/presentation/landing/home_page.dart';

class HomePageRoute extends GoRoute {
  HomePageRoute()
      : super(
          name: routeName,
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: HomePageHost(),
          ),
          routes: [MovieDetailRoute(), AuthRoute()],
        );

  static const routeName = 'home';
  static const successQueryParam = 'success';
}
