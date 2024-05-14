import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/home/check_login_usecase.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';
import 'package:movies_flutter/ui/common/common.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies_flutter/ui/landing/discover/view/discover_page.dart';
import 'package:movies_flutter/ui/landing/discover/viewmodel/discover_viewmodel.dart';
import 'package:movies_flutter/ui/landing/search/view/search_page.dart';
import 'package:movies_flutter/ui/landing/search/viewmodel/search_viewmodel.dart';
import 'package:provider/provider.dart';

class HomePageHost extends StatefulWidget {
  const HomePageHost({super.key});

  static const String routeName = '/';

  @override
  State<HomePageHost> createState() => _HomePageHostState();
}

class _HomePageHostState extends State<HomePageHost> {
  final List<Widget> pages = [];

  final pageController =
      PageController(initialPage: HomePageTab.discover.index);

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    pages.addAll(
      HomePageTab.values.map((tab) {
        switch (tab) {
          case HomePageTab.discover:
            return ChangeNotifierProvider(
              create: (context) => HomeViewModel(
                loadHomeUsecase: LoadHomeUsecase(
                  tmdbService: context.read(),
                  authStore: context.read(),
                  buildConfig: context.read(),
                ),
                checkLoginUsecase: CheckLoginUsecase(
                  authStore: context.read(),
                ),
              ),
              child: Builder(
                builder: (context) {
                  return const DiscoverPage();
                },
              ),
            );
          case HomePageTab.search:
            return ChangeNotifierProvider(
              create: (context) => SearchViewModel(
                searchMovieUsecase: MultiSearchUsecase(
                  tmdbService: context.read(),
                  buildConfig: context.read(),
                ),
              ),
              child: const SearchPage(),
            );
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomePageTab.values.length,
      child: Scaffold(
        body: ThemedAnnotatedRegion(
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) =>
                WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
            children: pages,
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: HomePageTab.values.map((tab) {
            switch (tab) {
              case HomePageTab.discover:
                return NavigationDestination(
                  icon: const Icon(Icons.home),
                  label: AppLocalizations.of(context)!.homeDiscoverTitle,
                );
              case HomePageTab.search:
                return NavigationDestination(
                  icon: const Icon(Icons.search),
                  label: AppLocalizations.of(context)!.homeDiscoverTitle,
                );
            }
          }).toList(),
          indicatorColor: Colors.deepPurple,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              pageController.jumpToPage(index);
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

enum HomePageTab { discover, search }
