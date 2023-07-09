import 'package:flutter/material.dart';
import 'package:movies_flutter/app/routes/auth_route.dart';
import 'package:movies_flutter/app/routes/home_page_route.dart';
import 'package:movies_flutter/app/routes/movie_detail_route.dart';
import 'package:movies_flutter/ui/landing/home_page.dart';
import 'package:movies_flutter/ui/login/view/auth_page.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';

List<Route<dynamic>> generateInitialRoute(String initialRoute) {
  switch (initialRoute) {
    case HomePageTabs.routeName:
      return [
        generateRoute(const RouteSettings(name: HomePageTabs.routeName))!,
      ];
    default:
      return List.empty();
  }
}

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AuthPage.routeName:
      return AuthRoute(settings: settings);
    case MovieDetailPage.routeName:
      return MovieDetailRoute(settings: settings);
    case HomePageTabs.routeName:
      return HomePageRoute(settings: settings);
  }

  return null;
}
