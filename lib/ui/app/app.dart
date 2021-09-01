import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/main.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:provider/provider.dart';

import '../../config.dart';
import 'routes.dart';
import '../../services/tmdb_service.dart';
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
        Provider<Dio>(create: (context) {
          final dio = Dio(
            BaseOptions(
              baseUrl: BuildConfigs.baseUrl,
              sendTimeout: const Duration(seconds: 10).inMilliseconds,
              connectTimeout: const Duration(seconds: 10).inMilliseconds,
              receiveTimeout: const Duration(seconds: 10).inMilliseconds,
            ),
          );
          dio.transformer = FlutterTransformer();
          dio.interceptors.add(
            LogInterceptor(
              requestBody: true,
              responseBody: true,
            ),
          );
          return dio;
        }),
        Provider(
          create: (context) => TmdbService(
            Provider.of(context, listen: false),
          ),
        ),
        Provider<AuthStore>(create: (context) => AuthStore()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          backgroundColor: backgroundColor,
          pageTransitionsTheme: pageTransitionsTheme,
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
