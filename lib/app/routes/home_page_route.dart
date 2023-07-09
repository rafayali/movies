import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/home/check_login_usecase.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';
import 'package:movies_flutter/ui/landing/discover/view/discover_page.dart';
import 'package:movies_flutter/ui/landing/discover/viewmodel/discover_viewmodel.dart';
import 'package:movies_flutter/ui/landing/home_page.dart';
import 'package:movies_flutter/ui/landing/search/view/search_page.dart';
import 'package:movies_flutter/ui/landing/search/viewmodel/search_viewmodel.dart';
import 'package:provider/provider.dart';

class HomePageRoute extends MaterialPageRoute {
  HomePageRoute({required RouteSettings settings})
      : super(
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
