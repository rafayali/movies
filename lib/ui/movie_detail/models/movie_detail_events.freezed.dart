// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailEventsTearOff {
  const _$MovieDetailEventsTearOff();

  MovieDetailEventsMessage message(String message) {
    return MovieDetailEventsMessage(
      message,
    );
  }
}

/// @nodoc
const $MovieDetailEvents = _$MovieDetailEventsTearOff();

/// @nodoc
mixin _$MovieDetailEvents {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailEventsMessage value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailEventsMessage value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailEventsMessage value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailEventsCopyWith<MovieDetailEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailEventsCopyWith<$Res> {
  factory $MovieDetailEventsCopyWith(
          MovieDetailEvents value, $Res Function(MovieDetailEvents) then) =
      _$MovieDetailEventsCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieDetailEventsCopyWithImpl<$Res>
    implements $MovieDetailEventsCopyWith<$Res> {
  _$MovieDetailEventsCopyWithImpl(this._value, this._then);

  final MovieDetailEvents _value;
  // ignore: unused_field
  final $Res Function(MovieDetailEvents) _then;

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
abstract class $MovieDetailEventsMessageCopyWith<$Res>
    implements $MovieDetailEventsCopyWith<$Res> {
  factory $MovieDetailEventsMessageCopyWith(MovieDetailEventsMessage value,
          $Res Function(MovieDetailEventsMessage) then) =
      _$MovieDetailEventsMessageCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$MovieDetailEventsMessageCopyWithImpl<$Res>
    extends _$MovieDetailEventsCopyWithImpl<$Res>
    implements $MovieDetailEventsMessageCopyWith<$Res> {
  _$MovieDetailEventsMessageCopyWithImpl(MovieDetailEventsMessage _value,
      $Res Function(MovieDetailEventsMessage) _then)
      : super(_value, (v) => _then(v as MovieDetailEventsMessage));

  @override
  MovieDetailEventsMessage get _value =>
      super._value as MovieDetailEventsMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MovieDetailEventsMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieDetailEventsMessage implements MovieDetailEventsMessage {
  const _$MovieDetailEventsMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieDetailEvents.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailEventsMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $MovieDetailEventsMessageCopyWith<MovieDetailEventsMessage> get copyWith =>
      _$MovieDetailEventsMessageCopyWithImpl<MovieDetailEventsMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailEventsMessage value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailEventsMessage value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailEventsMessage value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class MovieDetailEventsMessage implements MovieDetailEvents {
  const factory MovieDetailEventsMessage(String message) =
      _$MovieDetailEventsMessage;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $MovieDetailEventsMessageCopyWith<MovieDetailEventsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
