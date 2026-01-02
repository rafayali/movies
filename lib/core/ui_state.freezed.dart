// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UiState<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UiState<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UiState<$T>()';
}


}

/// @nodoc
class $UiStateCopyWith<T,$Res>  {
$UiStateCopyWith(UiState<T> _, $Res Function(UiState<T>) __);
}


/// Adds pattern-matching-related methods to [UiState].
extension UiStatePatterns<T> on UiState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Success<T> value)?  success,TResult Function( Loading<T> value)?  loading,TResult Function( Error<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that);case Loading() when loading != null:
return loading(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Success<T> value)  success,required TResult Function( Loading<T> value)  loading,required TResult Function( Error<T> value)  error,}){
final _that = this;
switch (_that) {
case Success():
return success(_that);case Loading():
return loading(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Success<T> value)?  success,TResult? Function( Loading<T> value)?  loading,TResult? Function( Error<T> value)?  error,}){
final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that);case Loading() when loading != null:
return loading(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T? data)?  success,TResult Function()?  loading,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that.data);case Loading() when loading != null:
return loading();case Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T? data)  success,required TResult Function()  loading,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case Success():
return success(_that.data);case Loading():
return loading();case Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T? data)?  success,TResult? Function()?  loading,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that.data);case Loading() when loading != null:
return loading();case Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Success<T> with DiagnosticableTreeMixin implements UiState<T> {
  const Success(this.data);
  

 final  T? data;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UiState<$T>.success'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UiState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $UiStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 T? data
});




}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Success<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class Loading<T> with DiagnosticableTreeMixin implements UiState<T> {
  const Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UiState<$T>.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UiState<$T>.loading()';
}


}




/// @nodoc


class Error<T> with DiagnosticableTreeMixin implements UiState<T> {
  const Error(this.message);
  

 final  String message;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, Error<T>> get copyWith => _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UiState<$T>.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UiState<$T>.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,$Res> implements $UiStateCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<T,$Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T> _self;
  final $Res Function(Error<T>) _then;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
