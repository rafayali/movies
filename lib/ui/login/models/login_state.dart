import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = Loading;
  const factory LoginState.ok() = Ok;
  const factory LoginState.error() = Error;
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.authorize(String requestToken) = LoginEventAuthorize;
  const factory LoginEvent.success(String sessionId) = LoginEventSuccess;
}
