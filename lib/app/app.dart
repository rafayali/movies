import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/app/routes.dart';
import 'package:movies_flutter/app/theme.dart';
import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/auth_store.dart';
import 'package:movies_flutter/ui/landing/landing_page.dart';
import 'package:movies_flutter/ui/login/view/login_page.dart';
import 'package:movies_flutter/main.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart'
    as chopper;
import 'package:movies_flutter/data/remote/http_client/http_client.dart';
import 'package:provider/provider.dart';

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
        onGenerateInitialRoutes: generateInitialRoute,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
