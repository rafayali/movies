import 'package:go_router/go_router.dart';
import 'package:movies_flutter/app/router/router/home_page_route.dart';

final routerConfig = GoRouter(
  initialLocation: '/movie/204746',
  routes: [HomePageRoute()],
);
