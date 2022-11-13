import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';
import 'package:movies_flutter/domain/home/check_login_usecase.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';
import 'package:movies_flutter/domain/login/generate_session_id_usecase.dart';
import 'package:movies_flutter/domain/login/new_auth_token_usecase.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';
import 'package:movies_flutter/ui/landing/discover/view/discover_page.dart';
import 'package:movies_flutter/ui/landing/discover/viewmodel/discover_viewmodel.dart';
import 'package:movies_flutter/ui/landing/home_page.dart';
import 'package:movies_flutter/ui/landing/search/view/search_page.dart';
import 'package:movies_flutter/ui/landing/search/viewmodel/search_viewmodel.dart';
import 'package:movies_flutter/ui/login/view/auth_page.dart';
import 'package:movies_flutter/ui/login/view/login_page.dart';
import 'package:movies_flutter/ui/login/viewmodel/login_viewmodel.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:provider/provider.dart';

List<Route<dynamic>> generateInitialRoute(String initialRoute) {
  switch (initialRoute) {
    case HomePageTabs.routeName:
      return [
        generateRoute(const RouteSettings(name: HomePageTabs.routeName))!,
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
            newTokenUseCase: NewTokenUsecase(
              tmdbService: context.read(),
              buildConfig: context.read(),
            ),
            generateSessionIdUsecase: GenerateSessionIdUsecase(
              tmdbService: context.read(),
              authStore: context.read(),
              buildConfig: context.read(),
            ),
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
    case MovieDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider<MovieDetailViewModel>(
          create: (context) => MovieDetailViewModel(
            params: settings.arguments as MovieDetailParams,
            loadMovieDetailUsecase: LoadMovieDetailUsecase(
              tmdbService: context.read(),
              buildConfig: context.read(),
            ),
            loadTvShowDetailUsecase: LoadTvShowDetailUsecase(
              tmdbService: context.read(),
              buildConfig: context.read(),
            ),
          ),
          child: const MovieDetailPage(),
        ),
        settings: settings,
      );
    case HomePageTabs.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePageTabs(
          tabs: [
            HomePageTab(
              icon: Icons.home,
              title: 'Discover',
              screen: ChangeNotifierProvider(
                create: (context) => HomeViewModel(
                    loadHomeUsecase: LoadHomeUsecase(
                      tmdbService: context.read(),
                      authStore: context.read(),
                      buildConfig: context.read(),
                    ),
                    checkLoginUsecase: CheckLoginUsecase(
                      authStore: context.read(),
                    )),
                child: const HomePage(),
              ),
            ),
            HomePageTab(
              icon: Icons.search,
              title: 'Search',
              screen: ChangeNotifierProvider(
                create: (context) => SearchViewModel(
                  searchMovieUsecase: MultiSearchUsecase(
                    tmdbService: context.read(),
                    buildConfig: context.read(),
                  ),
                ),
                child: const SearchPage(),
              ),
            )
          ],
        ),
        settings: settings,
      );
  }

  return null;
}
