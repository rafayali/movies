import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = Loading;
  const factory LoginState.ok() = Ok;
  const factory LoginState.error() = Error;
}

@freezed
class LoginNavigationEvent with _$LoginNavigationEvent {
  const factory LoginNavigationEvent.authorize(String requestToken) = Authorize;
  const factory LoginNavigationEvent.success(String sessionId) = Success;
}
