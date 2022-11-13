// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function()? loading,
    TResult? Function(List<SearchItem> items)? success,
    TResult? Function()? noResults,
    TResult? Function()? searchForMovies,
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
    TResult? Function(LoadingSearchUiState value)? loading,
    TResult? Function(SuccessSearchUiState value)? success,
    TResult? Function(NoResultsSearchUiState value)? noResults,
    TResult? Function(WaitingForInputSearchUiState value)? searchForMovies,
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
      _$SearchUiStateCopyWithImpl<$Res, SearchUiState>;
}

/// @nodoc
class _$SearchUiStateCopyWithImpl<$Res, $Val extends SearchUiState>
    implements $SearchUiStateCopyWith<$Res> {
  _$SearchUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingSearchUiStateCopyWith<$Res> {
  factory _$$LoadingSearchUiStateCopyWith(_$LoadingSearchUiState value,
          $Res Function(_$LoadingSearchUiState) then) =
      __$$LoadingSearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$LoadingSearchUiState>
    implements _$$LoadingSearchUiStateCopyWith<$Res> {
  __$$LoadingSearchUiStateCopyWithImpl(_$LoadingSearchUiState _value,
      $Res Function(_$LoadingSearchUiState) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$LoadingSearchUiState);
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
    TResult? Function()? loading,
    TResult? Function(List<SearchItem> items)? success,
    TResult? Function()? noResults,
    TResult? Function()? searchForMovies,
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
    TResult? Function(LoadingSearchUiState value)? loading,
    TResult? Function(SuccessSearchUiState value)? success,
    TResult? Function(NoResultsSearchUiState value)? noResults,
    TResult? Function(WaitingForInputSearchUiState value)? searchForMovies,
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
abstract class _$$SuccessSearchUiStateCopyWith<$Res> {
  factory _$$SuccessSearchUiStateCopyWith(_$SuccessSearchUiState value,
          $Res Function(_$SuccessSearchUiState) then) =
      __$$SuccessSearchUiStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchItem> items});
}

/// @nodoc
class __$$SuccessSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$SuccessSearchUiState>
    implements _$$SuccessSearchUiStateCopyWith<$Res> {
  __$$SuccessSearchUiStateCopyWithImpl(_$SuccessSearchUiState _value,
      $Res Function(_$SuccessSearchUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SuccessSearchUiState(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$SuccessSearchUiState implements SuccessSearchUiState {
  const _$SuccessSearchUiState(final List<SearchItem> items) : _items = items;

  final List<SearchItem> _items;
  @override
  List<SearchItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchUiState.success(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSearchUiState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSearchUiStateCopyWith<_$SuccessSearchUiState> get copyWith =>
      __$$SuccessSearchUiStateCopyWithImpl<_$SuccessSearchUiState>(
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
    TResult? Function()? loading,
    TResult? Function(List<SearchItem> items)? success,
    TResult? Function()? noResults,
    TResult? Function()? searchForMovies,
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
    TResult? Function(LoadingSearchUiState value)? loading,
    TResult? Function(SuccessSearchUiState value)? success,
    TResult? Function(NoResultsSearchUiState value)? noResults,
    TResult? Function(WaitingForInputSearchUiState value)? searchForMovies,
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
  const factory SuccessSearchUiState(final List<SearchItem> items) =
      _$SuccessSearchUiState;

  List<SearchItem> get items;
  @JsonKey(ignore: true)
  _$$SuccessSearchUiStateCopyWith<_$SuccessSearchUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoResultsSearchUiStateCopyWith<$Res> {
  factory _$$NoResultsSearchUiStateCopyWith(_$NoResultsSearchUiState value,
          $Res Function(_$NoResultsSearchUiState) then) =
      __$$NoResultsSearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultsSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$NoResultsSearchUiState>
    implements _$$NoResultsSearchUiStateCopyWith<$Res> {
  __$$NoResultsSearchUiStateCopyWithImpl(_$NoResultsSearchUiState _value,
      $Res Function(_$NoResultsSearchUiState) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$NoResultsSearchUiState);
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
    TResult? Function()? loading,
    TResult? Function(List<SearchItem> items)? success,
    TResult? Function()? noResults,
    TResult? Function()? searchForMovies,
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
    TResult? Function(LoadingSearchUiState value)? loading,
    TResult? Function(SuccessSearchUiState value)? success,
    TResult? Function(NoResultsSearchUiState value)? noResults,
    TResult? Function(WaitingForInputSearchUiState value)? searchForMovies,
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
abstract class _$$WaitingForInputSearchUiStateCopyWith<$Res> {
  factory _$$WaitingForInputSearchUiStateCopyWith(
          _$WaitingForInputSearchUiState value,
          $Res Function(_$WaitingForInputSearchUiState) then) =
      __$$WaitingForInputSearchUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitingForInputSearchUiStateCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$WaitingForInputSearchUiState>
    implements _$$WaitingForInputSearchUiStateCopyWith<$Res> {
  __$$WaitingForInputSearchUiStateCopyWithImpl(
      _$WaitingForInputSearchUiState _value,
      $Res Function(_$WaitingForInputSearchUiState) _then)
      : super(_value, _then);
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
            other is _$WaitingForInputSearchUiState);
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
    TResult? Function()? loading,
    TResult? Function(List<SearchItem> items)? success,
    TResult? Function()? noResults,
    TResult? Function()? searchForMovies,
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
    TResult? Function(LoadingSearchUiState value)? loading,
    TResult? Function(SuccessSearchUiState value)? success,
    TResult? Function(NoResultsSearchUiState value)? noResults,
    TResult? Function(WaitingForInputSearchUiState value)? searchForMovies,
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
