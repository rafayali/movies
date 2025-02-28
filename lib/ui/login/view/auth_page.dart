import 'package:flutter/material.dart';
import 'package:movies_flutter/l10n/app_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthPage extends StatefulWidget {
  static const routeName = '/auth';

  const AuthPage({super.key, required this.requestToken});

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
      ..loadRequest(Uri.parse(
        'https://www.themoviedb.org/authenticate/${widget.requestToken}',
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.loginDialogTitle),
      ),
      body: WebViewWidget(controller: webviewController),
    );
  }
}
