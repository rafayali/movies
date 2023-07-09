import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthPage extends StatefulWidget {
  static const routeName = '/auth';

  const AuthPage({Key? key, required this.requestToken}) : super(key: key);

  final String requestToken;

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final WebViewController webviewController;

  @override
  void initState() {
    super.initState();

    webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(Uri.parse(
        'https://www.themoviedb.org/authenticate/${widget.requestToken}',
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with TMDB'),
      ),
      body: WebViewWidget(controller: webviewController),
    );
  }
}
