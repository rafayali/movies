// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchUiState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUiState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUiState()';
}


}

/// @nodoc
class $SearchUiStateCopyWith<$Res>  {
$SearchUiStateCopyWith(SearchUiState _, $Res Function(SearchUiState) __);
}


/// Adds pattern-matching-related methods to [SearchUiState].
extension SearchUiStatePatterns on SearchUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingSearchUiState value)?  loading,TResult Function( SuccessSearchUiState value)?  success,TResult Function( NoResultsSearchUiState value)?  noResults,TResult Function( WaitingForInputSearchUiState value)?  searchForMovies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingSearchUiState() when loading != null:
return loading(_that);case SuccessSearchUiState() when success != null:
return success(_that);case NoResultsSearchUiState() when noResults != null:
return noResults(_that);case WaitingForInputSearchUiState() when searchForMovies != null:
return searchForMovies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingSearchUiState value)  loading,required TResult Function( SuccessSearchUiState value)  success,required TResult Function( NoResultsSearchUiState value)  noResults,required TResult Function( WaitingForInputSearchUiState value)  searchForMovies,}){
final _that = this;
switch (_that) {
case LoadingSearchUiState():
return loading(_that);case SuccessSearchUiState():
return success(_that);case NoResultsSearchUiState():
return noResults(_that);case WaitingForInputSearchUiState():
return searchForMovies(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingSearchUiState value)?  loading,TResult? Function( SuccessSearchUiState value)?  success,TResult? Function( NoResultsSearchUiState value)?  noResults,TResult? Function( WaitingForInputSearchUiState value)?  searchForMovies,}){
final _that = this;
switch (_that) {
case LoadingSearchUiState() when loading != null:
return loading(_that);case SuccessSearchUiState() when success != null:
return success(_that);case NoResultsSearchUiState() when noResults != null:
return noResults(_that);case WaitingForInputSearchUiState() when searchForMovies != null:
return searchForMovies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<SearchItem> items)?  success,TResult Function()?  noResults,TResult Function()?  searchForMovies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingSearchUiState() when loading != null:
return loading();case SuccessSearchUiState() when success != null:
return success(_that.items);case NoResultsSearchUiState() when noResults != null:
return noResults();case WaitingForInputSearchUiState() when searchForMovies != null:
return searchForMovies();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<SearchItem> items)  success,required TResult Function()  noResults,required TResult Function()  searchForMovies,}) {final _that = this;
switch (_that) {
case LoadingSearchUiState():
return loading();case SuccessSearchUiState():
return success(_that.items);case NoResultsSearchUiState():
return noResults();case WaitingForInputSearchUiState():
return searchForMovies();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<SearchItem> items)?  success,TResult? Function()?  noResults,TResult? Function()?  searchForMovies,}) {final _that = this;
switch (_that) {
case LoadingSearchUiState() when loading != null:
return loading();case SuccessSearchUiState() when success != null:
return success(_that.items);case NoResultsSearchUiState() when noResults != null:
return noResults();case WaitingForInputSearchUiState() when searchForMovies != null:
return searchForMovies();case _:
  return null;

}
}

}

/// @nodoc


class LoadingSearchUiState implements SearchUiState {
  const LoadingSearchUiState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSearchUiState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUiState.loading()';
}


}




/// @nodoc


class SuccessSearchUiState implements SearchUiState {
  const SuccessSearchUiState(final  List<SearchItem> items): _items = items;
  

 final  List<SearchItem> _items;
 List<SearchItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SearchUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessSearchUiStateCopyWith<SuccessSearchUiState> get copyWith => _$SuccessSearchUiStateCopyWithImpl<SuccessSearchUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessSearchUiState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SearchUiState.success(items: $items)';
}


}

/// @nodoc
abstract mixin class $SuccessSearchUiStateCopyWith<$Res> implements $SearchUiStateCopyWith<$Res> {
  factory $SuccessSearchUiStateCopyWith(SuccessSearchUiState value, $Res Function(SuccessSearchUiState) _then) = _$SuccessSearchUiStateCopyWithImpl;
@useResult
$Res call({
 List<SearchItem> items
});




}
/// @nodoc
class _$SuccessSearchUiStateCopyWithImpl<$Res>
    implements $SuccessSearchUiStateCopyWith<$Res> {
  _$SuccessSearchUiStateCopyWithImpl(this._self, this._then);

  final SuccessSearchUiState _self;
  final $Res Function(SuccessSearchUiState) _then;

/// Create a copy of SearchUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(SuccessSearchUiState(
null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SearchItem>,
  ));
}


}

/// @nodoc


class NoResultsSearchUiState implements SearchUiState {
  const NoResultsSearchUiState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoResultsSearchUiState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUiState.noResults()';
}


}




/// @nodoc


class WaitingForInputSearchUiState implements SearchUiState {
  const WaitingForInputSearchUiState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaitingForInputSearchUiState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUiState.searchForMovies()';
}


}




// dart format on
