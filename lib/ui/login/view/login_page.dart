import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_flutter/ui/login/view/auth_page.dart';
import 'package:movies_flutter/ui/login/viewmodel/login_viewmodel.dart';
import 'package:provider/provider.dart';

import '../models/login_models.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const routeName = 'login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginViewModel _loginViewModel = context.read();

  @override
  void initState() {
    super.initState();

    _loginViewModel.events.listen((event) async {
      await event.when(
        authorize: (requestToken) async {
          await Navigator.of(context)
              .pushNamed<String>(AuthPage.routeName, arguments: requestToken);
          _loginViewModel.generateSessionId(requestToken);
        },
        success: (sessionId) {
          Navigator.of(context).pop();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: SvgPicture.asset(
                'assets/tmdb_blue_square_2.svg',
              ),
            ),
          ),
          SafeArea(
            minimum: const EdgeInsets.all(16),
            child: Selector<LoginViewModel, LoginState>(
              builder: (context, value, child) => value.when(
                loading: () {
                  return const ElevatedButton(
                    onPressed: null,
                    child: Text('Please Wait...'),
                  );
                },
                ok: () => ElevatedButton(
                  key: const ValueKey('loginOkButton'),
                  onPressed: _onPressLogin,
                  child: const Text('Login'),
                ),
              ),
              selector: (context, viewModel) => viewModel.state,
            ),
          ),
        ],
      ),
    );
  }

  void _onPressLogin() {
    _loginViewModel.login();
  }
}
