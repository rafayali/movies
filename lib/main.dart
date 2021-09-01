import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';

import 'ui/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final state = await _initializeState();

  runApp(MoviesApp(params: state));
}

Future<MoviesAppParams> _initializeState() async {
  final authStore = AuthStore();
  final authenticated = (await authStore.getSessionId()) != null;
  return MoviesAppParams(authenticated: authenticated);
}

class MoviesAppParams {
  MoviesAppParams({required this.authenticated});

  final bool authenticated;
}
