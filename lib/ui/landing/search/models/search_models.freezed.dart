// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$LoadingSearchUiStateImplCopyWith<$Res> {
  factory _$$LoadingSearchUiStateImplCopyWith(_$LoadingSearchUiStateImpl value,
          $Res Function(_$LoadingSearchUiStateImpl) then) =
      __$$LoadingSearchUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$LoadingSearchUiStateImpl>
    implements _$$LoadingSearchUiStateImplCopyWith<$Res> {
  __$$LoadingSearchUiStateImplCopyWithImpl(_$LoadingSearchUiStateImpl _value,
      $Res Function(_$LoadingSearchUiStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSearchUiStateImpl implements LoadingSearchUiState {
  const _$LoadingSearchUiStateImpl();

  @override
  String toString() {
    return 'SearchUiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSearchUiStateImpl);
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
  const factory LoadingSearchUiState() = _$LoadingSearchUiStateImpl;
}

/// @nodoc
abstract class _$$SuccessSearchUiStateImplCopyWith<$Res> {
  factory _$$SuccessSearchUiStateImplCopyWith(_$SuccessSearchUiStateImpl value,
          $Res Function(_$SuccessSearchUiStateImpl) then) =
      __$$SuccessSearchUiStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchItem> items});
}

/// @nodoc
class __$$SuccessSearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$SuccessSearchUiStateImpl>
    implements _$$SuccessSearchUiStateImplCopyWith<$Res> {
  __$$SuccessSearchUiStateImplCopyWithImpl(_$SuccessSearchUiStateImpl _value,
      $Res Function(_$SuccessSearchUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SuccessSearchUiStateImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$SuccessSearchUiStateImpl implements SuccessSearchUiState {
  const _$SuccessSearchUiStateImpl(final List<SearchItem> items)
      : _items = items;

  final List<SearchItem> _items;
  @override
  List<SearchItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchUiState.success(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSearchUiStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSearchUiStateImplCopyWith<_$SuccessSearchUiStateImpl>
      get copyWith =>
          __$$SuccessSearchUiStateImplCopyWithImpl<_$SuccessSearchUiStateImpl>(
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
      _$SuccessSearchUiStateImpl;

  List<SearchItem> get items;
  @JsonKey(ignore: true)
  _$$SuccessSearchUiStateImplCopyWith<_$SuccessSearchUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoResultsSearchUiStateImplCopyWith<$Res> {
  factory _$$NoResultsSearchUiStateImplCopyWith(
          _$NoResultsSearchUiStateImpl value,
          $Res Function(_$NoResultsSearchUiStateImpl) then) =
      __$$NoResultsSearchUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultsSearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$NoResultsSearchUiStateImpl>
    implements _$$NoResultsSearchUiStateImplCopyWith<$Res> {
  __$$NoResultsSearchUiStateImplCopyWithImpl(
      _$NoResultsSearchUiStateImpl _value,
      $Res Function(_$NoResultsSearchUiStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoResultsSearchUiStateImpl implements NoResultsSearchUiState {
  const _$NoResultsSearchUiStateImpl();

  @override
  String toString() {
    return 'SearchUiState.noResults()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoResultsSearchUiStateImpl);
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
  const factory NoResultsSearchUiState() = _$NoResultsSearchUiStateImpl;
}

/// @nodoc
abstract class _$$WaitingForInputSearchUiStateImplCopyWith<$Res> {
  factory _$$WaitingForInputSearchUiStateImplCopyWith(
          _$WaitingForInputSearchUiStateImpl value,
          $Res Function(_$WaitingForInputSearchUiStateImpl) then) =
      __$$WaitingForInputSearchUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitingForInputSearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res,
        _$WaitingForInputSearchUiStateImpl>
    implements _$$WaitingForInputSearchUiStateImplCopyWith<$Res> {
  __$$WaitingForInputSearchUiStateImplCopyWithImpl(
      _$WaitingForInputSearchUiStateImpl _value,
      $Res Function(_$WaitingForInputSearchUiStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WaitingForInputSearchUiStateImpl
    implements WaitingForInputSearchUiState {
  const _$WaitingForInputSearchUiStateImpl();

  @override
  String toString() {
    return 'SearchUiState.searchForMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingForInputSearchUiStateImpl);
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
  const factory WaitingForInputSearchUiState() =
      _$WaitingForInputSearchUiStateImpl;
}
