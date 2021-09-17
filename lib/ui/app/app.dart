import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/main.dart';
import 'package:movies_flutter/services/tmdb_service.dart' as chopper;
import 'package:movies_flutter/ui/app/providers/http_client.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:provider/provider.dart';

import '../../config.dart';
import 'routes.dart';
import '../login/login_page.dart';
import '../data/auth_store.dart';
import '../../utils/colors.dart';

class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key, required this.params}) : super(key: key);

  final MoviesAppParams params;

  @override
  Widget build(BuildContext context) {
    const pageTransitionsTheme = PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: ZoomPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: ZoomPageTransitionsBuilder(),
      },
    );

    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ChopperHttpClient(BuildConfigs.baseUrl).client,
        ),
        Provider(
          create: (context) =>
              context.read<ChopperClient>().getService<chopper.TmdbService>(),
        ),
        Provider<AuthStore>(create: (context) => AuthStore()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          backgroundColor: backgroundColor,
          pageTransitionsTheme: pageTransitionsTheme,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
            ),
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          backgroundColor: backgroundColorDark,
          pageTransitionsTheme: pageTransitionsTheme,
        ),
        themeMode: ThemeMode.system,
        initialRoute:
            params.authenticated ? HomePage.routeName : LoginPage.routeName,
        onGenerateInitialRoutes: generateInitialRoute,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
