part of 'app.dart';

List<Route<dynamic>> _generateInitialRoute(String initialRoute) {
  switch (initialRoute) {
    case HomePageTabs.routeName:
      return [
        _generateRoute(const RouteSettings(name: HomePageTabs.routeName))!,
      ];
    case LoginPage.routeName:
      return [
        _generateRoute(const RouteSettings(name: LoginPage.routeName))!,
      ];
    default:
      return List.empty();
  }
}

Route<dynamic>? _generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider<LoginViewModel>(
          create: (context) => LoginViewModel(
            newTokenUseCase: NewTokenUsecase(tmdbService: context.read()),
            generateSessionIdUsecase: GenerateSessionIdUsecase(
              tmdbService: context.read(),
              authStore: context.read(),
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
            ),
            loadTvShowDetailUsecase: LoadTvShowDetailUsecase(
              tmdbService: context.read(),
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
                  ),
                ),
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
}
