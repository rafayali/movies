import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/landing/home_page.dart';

class HomePageRoute extends MaterialPageRoute {
  HomePageRoute({required RouteSettings settings})
      : super(
          builder: (context) => const HomePageHost(),
          settings: settings,
        );
}
