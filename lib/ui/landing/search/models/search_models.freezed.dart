// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchUiStateTearOff {
  const _$SearchUiStateTearOff();

  LoadingSearchUiState loading() {
    return const LoadingSearchUiState();
  }

  SuccessSearchUiState success(List<SearchItem> items) {
    return SuccessSearchUiState(
      items,
    );
  }

  NoResultsSearchUiState noResults() {
    return const NoResultsSearchUiState();
  }

  WaitingForInputSearchUiState searchForMovies() {
    return const WaitingForInputSearchUiState();
  }
}

/// @nodoc
const $SearchUiState = _$SearchUiStateTearOff();

/// @nodoc
mixin _$SearchUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SearchItem> items) success,
    required TResult Function() noResults,
    required TResult Function() searchForMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchUiState value) loading,
    required TResult Function(SuccessSearchUiState value) success,
    required TResult Function(NoResultsSearchUiState value) noResults,
    required TResult Function(WaitingForInputSearchUiState value)
        searchForMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUiStateCopyWith<$Res> {
  factory $SearchUiStateCopyWith(
          SearchUiState value, $Res Function(SearchUiState) then) =
      _$SearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUiStateCopyWithImpl<$Res>
    implements $SearchUiStateCopyWith<$Res> {
  _$SearchUiStateCopyWithImpl(this._value, this._then);

  final SearchUiState _value;
  // ignore: unused_field
  final $Res Function(SearchUiState) _then;
}

/// @nodoc
abstract class $LoadingSearchUiStateCopyWith<$Res> {
  factory $LoadingSearchUiStateCopyWith(LoadingSearchUiState value,
          $Res Function(LoadingSearchUiState) then) =
      _$LoadingSearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res>
    implements $LoadingSearchUiStateCopyWith<$Res> {
  _$LoadingSearchUiStateCopyWithImpl(
      LoadingSearchUiState _value, $Res Function(LoadingSearchUiState) _then)
      : super(_value, (v) => _then(v as LoadingSearchUiState));

  @override
  LoadingSearchUiState get _value => super._value as LoadingSearchUiState;
}

/// @nodoc

class _$LoadingSearchUiState implements LoadingSearchUiState {
  const _$LoadingSearchUiState();

  @override
  String toString() {
    return 'SearchUiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingSearchUiState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SearchItem> items) success,
    required TResult Function() noResults,
    required TResult Function() searchForMovies,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
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
    required TResult Function(LoadingSearchUiState value) loading,
    required TResult Function(SuccessSearchUiState value) success,
    required TResult Function(NoResultsSearchUiState value) noResults,
    required TResult Function(WaitingForInputSearchUiState value)
        searchForMovies,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSearchUiState implements SearchUiState {
  const factory LoadingSearchUiState() = _$LoadingSearchUiState;
}

/// @nodoc
abstract class $SuccessSearchUiStateCopyWith<$Res> {
  factory $SuccessSearchUiStateCopyWith(SuccessSearchUiState value,
          $Res Function(SuccessSearchUiState) then) =
      _$SuccessSearchUiStateCopyWithImpl<$Res>;
  $Res call({List<SearchItem> items});
}

/// @nodoc
class _$SuccessSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res>
    implements $SuccessSearchUiStateCopyWith<$Res> {
  _$SuccessSearchUiStateCopyWithImpl(
      SuccessSearchUiState _value, $Res Function(SuccessSearchUiState) _then)
      : super(_value, (v) => _then(v as SuccessSearchUiState));

  @override
  SuccessSearchUiState get _value => super._value as SuccessSearchUiState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(SuccessSearchUiState(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$SuccessSearchUiState implements SuccessSearchUiState {
  const _$SuccessSearchUiState(this.items);

  @override
  final List<SearchItem> items;

  @override
  String toString() {
    return 'SearchUiState.success(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessSearchUiState &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  $SuccessSearchUiStateCopyWith<SuccessSearchUiState> get copyWith =>
      _$SuccessSearchUiStateCopyWithImpl<SuccessSearchUiState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SearchItem> items) success,
    required TResult Function() noResults,
    required TResult Function() searchForMovies,
  }) {
    return success(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
  }) {
    return success?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchUiState value) loading,
    required TResult Function(SuccessSearchUiState value) success,
    required TResult Function(NoResultsSearchUiState value) noResults,
    required TResult Function(WaitingForInputSearchUiState value)
        searchForMovies,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSearchUiState implements SearchUiState {
  const factory SuccessSearchUiState(List<SearchItem> items) =
      _$SuccessSearchUiState;

  List<SearchItem> get items;
  @JsonKey(ignore: true)
  $SuccessSearchUiStateCopyWith<SuccessSearchUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoResultsSearchUiStateCopyWith<$Res> {
  factory $NoResultsSearchUiStateCopyWith(NoResultsSearchUiState value,
          $Res Function(NoResultsSearchUiState) then) =
      _$NoResultsSearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoResultsSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res>
    implements $NoResultsSearchUiStateCopyWith<$Res> {
  _$NoResultsSearchUiStateCopyWithImpl(NoResultsSearchUiState _value,
      $Res Function(NoResultsSearchUiState) _then)
      : super(_value, (v) => _then(v as NoResultsSearchUiState));

  @override
  NoResultsSearchUiState get _value => super._value as NoResultsSearchUiState;
}

/// @nodoc

class _$NoResultsSearchUiState implements NoResultsSearchUiState {
  const _$NoResultsSearchUiState();

  @override
  String toString() {
    return 'SearchUiState.noResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoResultsSearchUiState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SearchItem> items) success,
    required TResult Function() noResults,
    required TResult Function() searchForMovies,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchUiState value) loading,
    required TResult Function(SuccessSearchUiState value) success,
    required TResult Function(NoResultsSearchUiState value) noResults,
    required TResult Function(WaitingForInputSearchUiState value)
        searchForMovies,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class NoResultsSearchUiState implements SearchUiState {
  const factory NoResultsSearchUiState() = _$NoResultsSearchUiState;
}

/// @nodoc
abstract class $WaitingForInputSearchUiStateCopyWith<$Res> {
  factory $WaitingForInputSearchUiStateCopyWith(
          WaitingForInputSearchUiState value,
          $Res Function(WaitingForInputSearchUiState) then) =
      _$WaitingForInputSearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WaitingForInputSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res>
    implements $WaitingForInputSearchUiStateCopyWith<$Res> {
  _$WaitingForInputSearchUiStateCopyWithImpl(
      WaitingForInputSearchUiState _value,
      $Res Function(WaitingForInputSearchUiState) _then)
      : super(_value, (v) => _then(v as WaitingForInputSearchUiState));

  @override
  WaitingForInputSearchUiState get _value =>
      super._value as WaitingForInputSearchUiState;
}

/// @nodoc

class _$WaitingForInputSearchUiState implements WaitingForInputSearchUiState {
  const _$WaitingForInputSearchUiState();

  @override
  String toString() {
    return 'SearchUiState.searchForMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WaitingForInputSearchUiState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SearchItem> items) success,
    required TResult Function() noResults,
    required TResult Function() searchForMovies,
  }) {
    return searchForMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
  }) {
    return searchForMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SearchItem> items)? success,
    TResult Function()? noResults,
    TResult Function()? searchForMovies,
    required TResult orElse(),
  }) {
    if (searchForMovies != null) {
      return searchForMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchUiState value) loading,
    required TResult Function(SuccessSearchUiState value) success,
    required TResult Function(NoResultsSearchUiState value) noResults,
    required TResult Function(WaitingForInputSearchUiState value)
        searchForMovies,
  }) {
    return searchForMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
  }) {
    return searchForMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchUiState value)? loading,
    TResult Function(SuccessSearchUiState value)? success,
    TResult Function(NoResultsSearchUiState value)? noResults,
    TResult Function(WaitingForInputSearchUiState value)? searchForMovies,
    required TResult orElse(),
  }) {
    if (searchForMovies != null) {
      return searchForMovies(this);
    }
    return orElse();
  }
}

abstract class WaitingForInputSearchUiState implements SearchUiState {
  const factory WaitingForInputSearchUiState() = _$WaitingForInputSearchUiState;
}
