import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/data/auth_store.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
    overlays: [SystemUiOverlay.top],
  );

  final state = await _initializeState();

  _setupLogging();

  runApp(MoviesApp(params: state));
}

Future<MoviesAppParams> _initializeState() async {
  final authStore = AuthStore();
  final authenticated = (await authStore.getSessionId()) != null;
  return MoviesAppParams(authenticated: authenticated);
}

void _setupLogging() {
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      log('${record.level.name}: ${record.time}: ${record.message}');
    });
  }
}

class MoviesAppParams {
  MoviesAppParams({required this.authenticated});

  final bool authenticated;
}
