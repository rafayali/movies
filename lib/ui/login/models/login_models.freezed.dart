// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? ok,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(OkLoginState value)? ok,
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
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingLoginStateCopyWith<$Res> {
  factory _$$LoadingLoginStateCopyWith(
          _$LoadingLoginState value, $Res Function(_$LoadingLoginState) then) =
      __$$LoadingLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLoginState>
    implements _$$LoadingLoginStateCopyWith<$Res> {
  __$$LoadingLoginStateCopyWithImpl(
      _$LoadingLoginState _value, $Res Function(_$LoadingLoginState) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginState);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? ok,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(OkLoginState value)? ok,
  }) {
    return loading?.call(this);
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
abstract class _$$OkLoginStateCopyWith<$Res> {
  factory _$$OkLoginStateCopyWith(
          _$OkLoginState value, $Res Function(_$OkLoginState) then) =
      __$$OkLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OkLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$OkLoginState>
    implements _$$OkLoginStateCopyWith<$Res> {
  __$$OkLoginStateCopyWithImpl(
      _$OkLoginState _value, $Res Function(_$OkLoginState) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OkLoginState);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? ok,
  }) {
    return ok?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(OkLoginState value)? ok,
  }) {
    return ok?.call(this);
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
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestToken) authorize,
    required TResult Function(String sessionId) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestToken)? authorize,
    TResult? Function(String sessionId)? success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventSuccess value)? success,
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
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEventAuthorizeCopyWith<$Res> {
  factory _$$LoginEventAuthorizeCopyWith(_$LoginEventAuthorize value,
          $Res Function(_$LoginEventAuthorize) then) =
      __$$LoginEventAuthorizeCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestToken});
}

/// @nodoc
class __$$LoginEventAuthorizeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventAuthorize>
    implements _$$LoginEventAuthorizeCopyWith<$Res> {
  __$$LoginEventAuthorizeCopyWithImpl(
      _$LoginEventAuthorize _value, $Res Function(_$LoginEventAuthorize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestToken = null,
  }) {
    return _then(_$LoginEventAuthorize(
      null == requestToken
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
        (other.runtimeType == runtimeType &&
            other is _$LoginEventAuthorize &&
            (identical(other.requestToken, requestToken) ||
                other.requestToken == requestToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventAuthorizeCopyWith<_$LoginEventAuthorize> get copyWith =>
      __$$LoginEventAuthorizeCopyWithImpl<_$LoginEventAuthorize>(
          this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestToken)? authorize,
    TResult? Function(String sessionId)? success,
  }) {
    return authorize?.call(requestToken);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventSuccess value)? success,
  }) {
    return authorize?.call(this);
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
  const factory LoginEventAuthorize(final String requestToken) =
      _$LoginEventAuthorize;

  String get requestToken;
  @JsonKey(ignore: true)
  _$$LoginEventAuthorizeCopyWith<_$LoginEventAuthorize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventSuccessCopyWith<$Res> {
  factory _$$LoginEventSuccessCopyWith(
          _$LoginEventSuccess value, $Res Function(_$LoginEventSuccess) then) =
      __$$LoginEventSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$LoginEventSuccessCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventSuccess>
    implements _$$LoginEventSuccessCopyWith<$Res> {
  __$$LoginEventSuccessCopyWithImpl(
      _$LoginEventSuccess _value, $Res Function(_$LoginEventSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$LoginEventSuccess(
      null == sessionId
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
        (other.runtimeType == runtimeType &&
            other is _$LoginEventSuccess &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventSuccessCopyWith<_$LoginEventSuccess> get copyWith =>
      __$$LoginEventSuccessCopyWithImpl<_$LoginEventSuccess>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestToken)? authorize,
    TResult? Function(String sessionId)? success,
  }) {
    return success?.call(sessionId);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventSuccess value)? success,
  }) {
    return success?.call(this);
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
  const factory LoginEventSuccess(final String sessionId) = _$LoginEventSuccess;

  String get sessionId;
  @JsonKey(ignore: true)
  _$$LoginEventSuccessCopyWith<_$LoginEventSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
