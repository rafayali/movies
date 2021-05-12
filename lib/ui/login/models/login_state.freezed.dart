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

  Loading loading(String message) {
    return Loading(
      message,
    );
  }

  Ok ok(String message) {
    return Ok(
      message,
    );
  }

  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loading,
    required TResult Function(String message) ok,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loading,
    TResult Function(String message)? ok,
    TResult Function(String message)? error,
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

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Loading(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loading,
    required TResult Function(String message) ok,
    required TResult Function(String message) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loading,
    TResult Function(String message)? ok,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
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
  const factory Loading(String message) = _$Loading;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OkCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $OkCopyWith(Ok value, $Res Function(Ok) then) =
      _$OkCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$OkCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $OkCopyWith<$Res> {
  _$OkCopyWithImpl(Ok _value, $Res Function(Ok) _then)
      : super(_value, (v) => _then(v as Ok));

  @override
  Ok get _value => super._value as Ok;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Ok(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Ok implements Ok {
  const _$Ok(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.ok(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ok &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $OkCopyWith<Ok> get copyWith => _$OkCopyWithImpl<Ok>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loading,
    required TResult Function(String message) ok,
    required TResult Function(String message) error,
  }) {
    return ok(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loading,
    TResult Function(String message)? ok,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(message);
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
  const factory Ok(String message) = _$Ok;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OkCopyWith<Ok> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loading,
    required TResult Function(String message) ok,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loading,
    TResult Function(String message)? ok,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
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
  const factory Error(String message) = _$Error;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
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
