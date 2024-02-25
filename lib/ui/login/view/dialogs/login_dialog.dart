import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/domain/login/generate_session_id_usecase.dart';
import 'package:movies_flutter/domain/login/new_auth_token_usecase.dart';
import 'package:movies_flutter/resources/resources.dart';
import 'package:movies_flutter/ui/login/models/login_models.dart';
import 'package:movies_flutter/ui/login/viewmodel/login_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({super.key});

  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  late final _loginViewModel = context.read<LoginViewModel>();

  @override
  void initState() {
    super.initState();

    _loginViewModel.events.listen((event) async {
      await event.when(
        authorize: (requestToken) async {
          context.goNamed(
            'auth',
            queryParameters: {
              'requestToken': requestToken,
            },
          );
          _loginViewModel.generateSessionId(requestToken);
        },
        success: (sessionId) {
          //TODO refactor to go_router
          log('success called');
          context.goNamed('home', queryParameters: {'success': true});
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppLocalizations.of(context)!.loginDialogTitle,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            Images.imgSvgTmdbBlueSquare2,
            width: 64,
            height: 64,
          ),
          const SizedBox(height: 16),
          Text(
            AppLocalizations.of(context)!.discoverGuestUserDesc,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Selector<LoginViewModel, LoginState>(
            selector: (_, vm) => vm.state,
            builder: (context, value, child) => value.when(
              loading: () {
                return const ElevatedButton(
                  onPressed: null,
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              },
              ok: () {
                return ElevatedButton(
                  onPressed: () {
                    _loginViewModel.login();
                  },
                  child: Text(AppLocalizations.of(context)!.loginButtonText),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Future<bool> showLoginDialog(BuildContext context) async {
  final loggedIn = await showDialog<bool>(
    context: context,
    builder: (context) {
      return ChangeNotifierProvider(
        create: (context) => LoginViewModel(
          newTokenUseCase: NewRequestTokenUsecase(
            tmdbService: context.read(),
            buildConfig: context.read(),
          ),
          generateSessionIdUsecase: GenerateSessionIdUsecase(
            tmdbService: context.read(),
            buildConfig: context.read(),
            authStore: context.read(),
          ),
        ),
        child: const LoginDialog(),
      );
    },
  );
  return loggedIn ?? false;
}
