import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';
import 'package:movies_flutter/domain/login/generate_session_id_usecase.dart';
import 'package:movies_flutter/domain/login/new_auth_token_usecase.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';
import 'package:movies_flutter/ui/landing/discover/view/discover_page.dart';
import 'package:movies_flutter/ui/landing/landing_page.dart';
import 'package:movies_flutter/ui/landing/discover/viewmodel/discover_viewmodel.dart';
import 'package:movies_flutter/ui/landing/search/view/search_page.dart';
import 'package:movies_flutter/ui/landing/search/viewmodel/search_viewmodel.dart';
import 'package:movies_flutter/ui/login/view/auth_page.dart';
import 'package:movies_flutter/ui/login/view/login_page.dart';
import 'package:movies_flutter/ui/login/viewmodel/login_viewmodel.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:movies_flutter/main.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart'
    as chopper;
import 'package:movies_flutter/data/remote/http_client/http_client.dart';
import 'package:provider/provider.dart';

import '../config.dart';
import '../data/auth_store.dart';
import '../utils/colors.dart';

part 'routes.dart';
part 'theme.dart';

class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key, required this.params}) : super(key: key);

  final MoviesAppParams params;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => BuildConfig.create()),
        Provider(
          create: (context) =>
              ChopperHttpClient(context.read<BuildConfig>().baseUrl).client,
        ),
        Provider(
          create: (context) =>
              context.read<ChopperClient>().getService<chopper.TmdbService>(),
        ),
        Provider<AuthStore>(create: (context) => AuthStore()),
      ],
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        initialRoute:
            params.authenticated ? HomePageTabs.routeName : LoginPage.routeName,
        onGenerateInitialRoutes: _generateInitialRoute,
        onGenerateRoute: _generateRoute,
      ),
    );
  }
}
