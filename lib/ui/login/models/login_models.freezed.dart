// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoadingLoginState loading() {
    return const LoadingLoginState();
  }

  OkLoginState ok() {
    return const OkLoginState();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(OkLoginState value) ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(OkLoginState value)? ok,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $LoadingLoginStateCopyWith<$Res> {
  factory $LoadingLoginStateCopyWith(
          LoadingLoginState value, $Res Function(LoadingLoginState) then) =
      _$LoadingLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingLoginStateCopyWith<$Res> {
  _$LoadingLoginStateCopyWithImpl(
      LoadingLoginState _value, $Res Function(LoadingLoginState) _then)
      : super(_value, (v) => _then(v as LoadingLoginState));

  @override
  LoadingLoginState get _value => super._value as LoadingLoginState;
}

/// @nodoc

class _$LoadingLoginState implements LoadingLoginState {
  const _$LoadingLoginState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(OkLoginState value) ok,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(OkLoginState value)? ok,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState implements LoginState {
  const factory LoadingLoginState() = _$LoadingLoginState;
}

/// @nodoc
abstract class $OkLoginStateCopyWith<$Res> {
  factory $OkLoginStateCopyWith(
          OkLoginState value, $Res Function(OkLoginState) then) =
      _$OkLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OkLoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $OkLoginStateCopyWith<$Res> {
  _$OkLoginStateCopyWithImpl(
      OkLoginState _value, $Res Function(OkLoginState) _then)
      : super(_value, (v) => _then(v as OkLoginState));

  @override
  OkLoginState get _value => super._value as OkLoginState;
}

/// @nodoc

class _$OkLoginState implements OkLoginState {
  const _$OkLoginState();

  @override
  String toString() {
    return 'LoginState.ok()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OkLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
  }) {
    return ok();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(OkLoginState value) ok,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(OkLoginState value)? ok,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class OkLoginState implements LoginState {
  const factory OkLoginState() = _$OkLoginState;
}

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LoginEventAuthorize authorize(String requestToken) {
    return LoginEventAuthorize(
      requestToken,
    );
  }

  LoginEventSuccess success(String sessionId) {
    return LoginEventSuccess(
      sessionId,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestToken) authorize,
    required TResult Function(String sessionId) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestToken)? authorize,
    TResult Function(String sessionId)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $LoginEventAuthorizeCopyWith<$Res> {
  factory $LoginEventAuthorizeCopyWith(
          LoginEventAuthorize value, $Res Function(LoginEventAuthorize) then) =
      _$LoginEventAuthorizeCopyWithImpl<$Res>;
  $Res call({String requestToken});
}

/// @nodoc
class _$LoginEventAuthorizeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventAuthorizeCopyWith<$Res> {
  _$LoginEventAuthorizeCopyWithImpl(
      LoginEventAuthorize _value, $Res Function(LoginEventAuthorize) _then)
      : super(_value, (v) => _then(v as LoginEventAuthorize));

  @override
  LoginEventAuthorize get _value => super._value as LoginEventAuthorize;

  @override
  $Res call({
    Object? requestToken = freezed,
  }) {
    return _then(LoginEventAuthorize(
      requestToken == freezed
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventAuthorize implements LoginEventAuthorize {
  const _$LoginEventAuthorize(this.requestToken);

  @override
  final String requestToken;

  @override
  String toString() {
    return 'LoginEvent.authorize(requestToken: $requestToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventAuthorize &&
            (identical(other.requestToken, requestToken) ||
                const DeepCollectionEquality()
                    .equals(other.requestToken, requestToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestToken);

  @JsonKey(ignore: true)
  @override
  $LoginEventAuthorizeCopyWith<LoginEventAuthorize> get copyWith =>
      _$LoginEventAuthorizeCopyWithImpl<LoginEventAuthorize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestToken) authorize,
    required TResult Function(String sessionId) success,
  }) {
    return authorize(requestToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestToken)? authorize,
    TResult Function(String sessionId)? success,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(requestToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventSuccess value) success,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class LoginEventAuthorize implements LoginEvent {
  const factory LoginEventAuthorize(String requestToken) =
      _$LoginEventAuthorize;

  String get requestToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEventAuthorizeCopyWith<LoginEventAuthorize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventSuccessCopyWith<$Res> {
  factory $LoginEventSuccessCopyWith(
          LoginEventSuccess value, $Res Function(LoginEventSuccess) then) =
      _$LoginEventSuccessCopyWithImpl<$Res>;
  $Res call({String sessionId});
}

/// @nodoc
class _$LoginEventSuccessCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventSuccessCopyWith<$Res> {
  _$LoginEventSuccessCopyWithImpl(
      LoginEventSuccess _value, $Res Function(LoginEventSuccess) _then)
      : super(_value, (v) => _then(v as LoginEventSuccess));

  @override
  LoginEventSuccess get _value => super._value as LoginEventSuccess;

  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(LoginEventSuccess(
      sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventSuccess implements LoginEventSuccess {
  const _$LoginEventSuccess(this.sessionId);

  @override
  final String sessionId;

  @override
  String toString() {
    return 'LoginEvent.success(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventSuccess &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessionId);

  @JsonKey(ignore: true)
  @override
  $LoginEventSuccessCopyWith<LoginEventSuccess> get copyWith =>
      _$LoginEventSuccessCopyWithImpl<LoginEventSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestToken) authorize,
    required TResult Function(String sessionId) success,
  }) {
    return success(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestToken)? authorize,
    TResult Function(String sessionId)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginEventSuccess implements LoginEvent {
  const factory LoginEventSuccess(String sessionId) = _$LoginEventSuccess;

  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEventSuccessCopyWith<LoginEventSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
