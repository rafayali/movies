import 'package:movies_flutter/data/local/auth_store.dart';

import '../../core/usecase.dart';

class CheckLoginUsecase extends UseCase<Nothing, bool> {
  CheckLoginUsecase({required this.authStore});

  final AuthStore authStore;

  @override
  Future<bool> execute(Nothing params) async {
    if (await authStore.getSessionId() == null) {
      return false;
    } else {
      return true;
    }
  }
}
