import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthPage extends StatefulWidget {
  static const routeName = '/auth';

  AuthPage({required this.requestToken});

  final String requestToken;

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login with TMDB'),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl:
            'https://www.themoviedb.org/authenticate/${widget.requestToken}',
      ),
    );
  }
}
