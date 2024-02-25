import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/app/router/go_routes/auth_route.dart';
import 'package:movies_flutter/app/router/go_routes/movie_detail_route.dart';
import 'package:movies_flutter/ui/landing/home_page.dart';

class HomePageRoute extends GoRoute {
  HomePageRoute()
      : super(
          name: 'home',
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: HomePageHost(),
          ),
          routes: [MovieDetailRoute(), AuthRoute()],
        );
}
