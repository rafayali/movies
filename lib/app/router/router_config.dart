import 'package:go_router/go_router.dart';
import 'package:movies_flutter/app/router/routes/home_page_route.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [HomePageRoute()],
);
