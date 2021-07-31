import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_flutter/ui/home/home_page.dart';
import 'package:movies_flutter/ui/login/auth_page.dart';
import 'package:movies_flutter/ui/login/login_bloc.dart';
import 'package:provider/provider.dart';

import 'models/login_state.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();

    _loginBloc = Provider.of(context, listen: false);

    _loginBloc.tmdbAuthEvent.listen((event) async {
      await event.when(
        authorize: (requestToken) async {
          await Navigator.of(context)
              .pushNamed<String>(AuthPage.routeName, arguments: requestToken);
          _loginBloc.generateSessionId(requestToken);
        },
        success: (sessionId) {
          Navigator.of(context).popAndPushNamed(HomePage.routeName);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
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
            StreamBuilder<LoginState>(
              stream: _loginBloc.loginState,
              initialData: LoginState.ok(),
              builder: (context, snapshot) {
                return snapshot.data!.when(
                  loading: () {
                    return ElevatedButton(
                      onPressed: null,
                      child: Text('Please Wait...'),
                    );
                  },
                  ok: () => ElevatedButton(
                    key: ValueKey('loginOkButton'),
                    onPressed: _onPressLogin,
                    child: Text('Login'),
                  ),
                  error: () => ElevatedButton(
                    onPressed: _onPressLogin,
                    child: Text('Login'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onPressLogin() {
    _loginBloc.login();
  }
}
