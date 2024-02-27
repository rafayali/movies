import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/app/router/router/home_page_route.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthPage extends StatefulWidget {
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
      ..loadRequest(
        Uri.parse(
          'https://www.themoviedb.org/authenticate/${widget.requestToken}',
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.loginDialogTitle),
        actions: [
          IconButton.outlined(
            onPressed: () {
              context.goNamed(HomePageRoute.routeName,
                  queryParameters: {'success': '${true}'});
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: WebViewWidget(controller: webviewController),
    );
  }
}
