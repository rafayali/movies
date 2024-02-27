import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_models.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = LoadingLoginState;
  const factory LoginState.ok() = OkLoginState;
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.authorize(String requestToken) = LoginEventAuthorize;
  const factory LoginEvent.success(String sessionId) = LoginEventSuccess;
}
