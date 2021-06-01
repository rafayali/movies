// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Loading loading() {
    return const Loading();
  }

  Ok ok() {
    return const Ok();
  }

  Error error() {
    return const Error();
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
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Ok value) ok,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ok value)? ok,
    TResult Function(Error value)? error,
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
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Ok value) ok,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ok value)? ok,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $OkCopyWith<$Res> {
  factory $OkCopyWith(Ok value, $Res Function(Ok) then) =
      _$OkCopyWithImpl<$Res>;
}

/// @nodoc
class _$OkCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $OkCopyWith<$Res> {
  _$OkCopyWithImpl(Ok _value, $Res Function(Ok) _then)
      : super(_value, (v) => _then(v as Ok));

  @override
  Ok get _value => super._value as Ok;
}

/// @nodoc

class _$Ok implements Ok {
  const _$Ok();

  @override
  String toString() {
    return 'LoginState.ok()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Ok);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() error,
  }) {
    return ok();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Ok value) ok,
    required TResult Function(Error value) error,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ok value)? ok,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok implements LoginState {
  const factory Ok() = _$Ok;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'LoginState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ok,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ok,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Ok value) ok,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ok value)? ok,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LoginState {
  const factory Error() = _$Error;
}

/// @nodoc
class _$LoginNavigationEventTearOff {
  const _$LoginNavigationEventTearOff();

  Authorize authorize(String requestToken) {
    return Authorize(
      requestToken,
    );
  }

  Success success(String sessionId) {
    return Success(
      sessionId,
    );
  }
}

/// @nodoc
const $LoginNavigationEvent = _$LoginNavigationEventTearOff();

/// @nodoc
mixin _$LoginNavigationEvent {
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
    required TResult Function(Authorize value) authorize,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginNavigationEventCopyWith<$Res> {
  factory $LoginNavigationEventCopyWith(LoginNavigationEvent value,
          $Res Function(LoginNavigationEvent) then) =
      _$LoginNavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginNavigationEventCopyWithImpl<$Res>
    implements $LoginNavigationEventCopyWith<$Res> {
  _$LoginNavigationEventCopyWithImpl(this._value, this._then);

  final LoginNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(LoginNavigationEvent) _then;
}

/// @nodoc
abstract class $AuthorizeCopyWith<$Res> {
  factory $AuthorizeCopyWith(Authorize value, $Res Function(Authorize) then) =
      _$AuthorizeCopyWithImpl<$Res>;
  $Res call({String requestToken});
}

/// @nodoc
class _$AuthorizeCopyWithImpl<$Res>
    extends _$LoginNavigationEventCopyWithImpl<$Res>
    implements $AuthorizeCopyWith<$Res> {
  _$AuthorizeCopyWithImpl(Authorize _value, $Res Function(Authorize) _then)
      : super(_value, (v) => _then(v as Authorize));

  @override
  Authorize get _value => super._value as Authorize;

  @override
  $Res call({
    Object? requestToken = freezed,
  }) {
    return _then(Authorize(
      requestToken == freezed
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Authorize implements Authorize {
  const _$Authorize(this.requestToken);

  @override
  final String requestToken;

  @override
  String toString() {
    return 'LoginNavigationEvent.authorize(requestToken: $requestToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authorize &&
            (identical(other.requestToken, requestToken) ||
                const DeepCollectionEquality()
                    .equals(other.requestToken, requestToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestToken);

  @JsonKey(ignore: true)
  @override
  $AuthorizeCopyWith<Authorize> get copyWith =>
      _$AuthorizeCopyWithImpl<Authorize>(this, _$identity);

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
    required TResult Function(Authorize value) authorize,
    required TResult Function(Success value) success,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class Authorize implements LoginNavigationEvent {
  const factory Authorize(String requestToken) = _$Authorize;

  String get requestToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizeCopyWith<Authorize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({String sessionId});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$LoginNavigationEventCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(Success(
      sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(this.sessionId);

  @override
  final String sessionId;

  @override
  String toString() {
    return 'LoginNavigationEvent.success(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessionId);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

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
    required TResult Function(Authorize value) authorize,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginNavigationEvent {
  const factory Success(String sessionId) = _$Success;

  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}
