import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/configs.dart';
import 'package:movies_flutter/routes.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:movies_flutter/ui/login/login_bloc.dart';
import 'package:movies_flutter/utils/auth_store.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'services/tmdb_service.dart';
import 'ui/home/home_bloc.dart';
import 'ui/login/login_page.dart';
import 'utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final state = await _initializeState();

  runApp(MoviesApp(state: state));
}

class MoviesApp extends StatelessWidget {
  MoviesApp({required this.state});

  final MoviesAppState state;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Dio>(create: (context) {
          final dio = Dio(
            BaseOptions(
              baseUrl: BuildConfigs.BaseUrl,
              sendTimeout: Duration(seconds: 10).inMilliseconds,
              connectTimeout: Duration(seconds: 10).inMilliseconds,
              receiveTimeout: Duration(seconds: 10).inMilliseconds,
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
          backgroundColor: backgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.dark().copyWith(
          backgroundColor: backgroundColorDark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        themeMode: ThemeMode.system,
        initialRoute:
            state.authenticated ? HomePage.routeName : LoginPage.routeName,
        onGenerateInitialRoutes: (initialRoute) {
          switch (initialRoute) {
            case HomePage.routeName:
              return [
                MaterialPageRoute(
                  builder: (context) => Provider(
                    create: (context) => HomeBloc(
                      Provider.of<TmdbService>(context, listen: false),
                      Provider.of<AuthStore>(context, listen: false),
                    ),
                    dispose: (BuildContext context, HomeBloc value) =>
                        value.dispose(),
                    child: HomePage(),
                  ),
                  settings: RouteSettings(name: HomePage.routeName),
                ),
              ];
            case LoginPage.routeName:
              return [
                MaterialPageRoute(
                  builder: (context) => Provider(
                    create: (context) => LoginBloc(
                      Provider.of(context, listen: false),
                      Provider.of(
                        context,
                        listen: false,
                      ),
                    ),
                    child: LoginPage(),
                  ),
                )
              ];
            default:
              return List.empty();
          }
        },
        onGenerateRoute: generateRoute,
      ),
    );
  }
}

Future<MoviesAppState> _initializeState() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final authenticated = sharedPreferences.getString('sessionId') != null;
  return MoviesAppState(authenticated: authenticated);
}

class MoviesAppState {
  MoviesAppState({required this.authenticated});

  final bool authenticated;
}
