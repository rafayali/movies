// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingLoginState value)?  loading,TResult Function( OkLoginState value)?  ok,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingLoginState() when loading != null:
return loading(_that);case OkLoginState() when ok != null:
return ok(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingLoginState value)  loading,required TResult Function( OkLoginState value)  ok,}){
final _that = this;
switch (_that) {
case LoadingLoginState():
return loading(_that);case OkLoginState():
return ok(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingLoginState value)?  loading,TResult? Function( OkLoginState value)?  ok,}){
final _that = this;
switch (_that) {
case LoadingLoginState() when loading != null:
return loading(_that);case OkLoginState() when ok != null:
return ok(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  ok,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingLoginState() when loading != null:
return loading();case OkLoginState() when ok != null:
return ok();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  ok,}) {final _that = this;
switch (_that) {
case LoadingLoginState():
return loading();case OkLoginState():
return ok();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  ok,}) {final _that = this;
switch (_that) {
case LoadingLoginState() when loading != null:
return loading();case OkLoginState() when ok != null:
return ok();case _:
  return null;

}
}

}

/// @nodoc


class LoadingLoginState implements LoginState {
  const LoadingLoginState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingLoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class OkLoginState implements LoginState {
  const OkLoginState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OkLoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.ok()';
}


}




/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginEventAuthorize value)?  authorize,TResult Function( LoginEventSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginEventAuthorize() when authorize != null:
return authorize(_that);case LoginEventSuccess() when success != null:
return success(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginEventAuthorize value)  authorize,required TResult Function( LoginEventSuccess value)  success,}){
final _that = this;
switch (_that) {
case LoginEventAuthorize():
return authorize(_that);case LoginEventSuccess():
return success(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginEventAuthorize value)?  authorize,TResult? Function( LoginEventSuccess value)?  success,}){
final _that = this;
switch (_that) {
case LoginEventAuthorize() when authorize != null:
return authorize(_that);case LoginEventSuccess() when success != null:
return success(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String requestToken)?  authorize,TResult Function( String sessionId)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginEventAuthorize() when authorize != null:
return authorize(_that.requestToken);case LoginEventSuccess() when success != null:
return success(_that.sessionId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String requestToken)  authorize,required TResult Function( String sessionId)  success,}) {final _that = this;
switch (_that) {
case LoginEventAuthorize():
return authorize(_that.requestToken);case LoginEventSuccess():
return success(_that.sessionId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String requestToken)?  authorize,TResult? Function( String sessionId)?  success,}) {final _that = this;
switch (_that) {
case LoginEventAuthorize() when authorize != null:
return authorize(_that.requestToken);case LoginEventSuccess() when success != null:
return success(_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc


class LoginEventAuthorize implements LoginEvent {
  const LoginEventAuthorize(this.requestToken);
  

 final  String requestToken;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEventAuthorizeCopyWith<LoginEventAuthorize> get copyWith => _$LoginEventAuthorizeCopyWithImpl<LoginEventAuthorize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEventAuthorize&&(identical(other.requestToken, requestToken) || other.requestToken == requestToken));
}


@override
int get hashCode => Object.hash(runtimeType,requestToken);

@override
String toString() {
  return 'LoginEvent.authorize(requestToken: $requestToken)';
}


}

/// @nodoc
abstract mixin class $LoginEventAuthorizeCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginEventAuthorizeCopyWith(LoginEventAuthorize value, $Res Function(LoginEventAuthorize) _then) = _$LoginEventAuthorizeCopyWithImpl;
@useResult
$Res call({
 String requestToken
});




}
/// @nodoc
class _$LoginEventAuthorizeCopyWithImpl<$Res>
    implements $LoginEventAuthorizeCopyWith<$Res> {
  _$LoginEventAuthorizeCopyWithImpl(this._self, this._then);

  final LoginEventAuthorize _self;
  final $Res Function(LoginEventAuthorize) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestToken = null,}) {
  return _then(LoginEventAuthorize(
null == requestToken ? _self.requestToken : requestToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginEventSuccess implements LoginEvent {
  const LoginEventSuccess(this.sessionId);
  

 final  String sessionId;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEventSuccessCopyWith<LoginEventSuccess> get copyWith => _$LoginEventSuccessCopyWithImpl<LoginEventSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEventSuccess&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'LoginEvent.success(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $LoginEventSuccessCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginEventSuccessCopyWith(LoginEventSuccess value, $Res Function(LoginEventSuccess) _then) = _$LoginEventSuccessCopyWithImpl;
@useResult
$Res call({
 String sessionId
});




}
/// @nodoc
class _$LoginEventSuccessCopyWithImpl<$Res>
    implements $LoginEventSuccessCopyWith<$Res> {
  _$LoginEventSuccessCopyWithImpl(this._self, this._then);

  final LoginEventSuccess _self;
  final $Res Function(LoginEventSuccess) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(LoginEventSuccess(
null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
