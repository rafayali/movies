// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movies_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchParams {

 String get query; bool get reset;
/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchParamsCopyWith<SearchParams> get copyWith => _$SearchParamsCopyWithImpl<SearchParams>(this as SearchParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchParams&&(identical(other.query, query) || other.query == query)&&(identical(other.reset, reset) || other.reset == reset));
}


@override
int get hashCode => Object.hash(runtimeType,query,reset);

@override
String toString() {
  return 'SearchParams(query: $query, reset: $reset)';
}


}

/// @nodoc
abstract mixin class $SearchParamsCopyWith<$Res>  {
  factory $SearchParamsCopyWith(SearchParams value, $Res Function(SearchParams) _then) = _$SearchParamsCopyWithImpl;
@useResult
$Res call({
 String query, bool reset
});




}
/// @nodoc
class _$SearchParamsCopyWithImpl<$Res>
    implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._self, this._then);

  final SearchParams _self;
  final $Res Function(SearchParams) _then;

/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? reset = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,reset: null == reset ? _self.reset : reset // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchParams].
extension SearchParamsPatterns on SearchParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchParams value)  $default,){
final _that = this;
switch (_that) {
case _SearchParams():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchParams value)?  $default,){
final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  bool reset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
return $default(_that.query,_that.reset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  bool reset)  $default,) {final _that = this;
switch (_that) {
case _SearchParams():
return $default(_that.query,_that.reset);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  bool reset)?  $default,) {final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
return $default(_that.query,_that.reset);case _:
  return null;

}
}

}

/// @nodoc


class _SearchParams implements SearchParams {
  const _SearchParams({required this.query, required this.reset});
  

@override final  String query;
@override final  bool reset;

/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchParamsCopyWith<_SearchParams> get copyWith => __$SearchParamsCopyWithImpl<_SearchParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchParams&&(identical(other.query, query) || other.query == query)&&(identical(other.reset, reset) || other.reset == reset));
}


@override
int get hashCode => Object.hash(runtimeType,query,reset);

@override
String toString() {
  return 'SearchParams(query: $query, reset: $reset)';
}


}

/// @nodoc
abstract mixin class _$SearchParamsCopyWith<$Res> implements $SearchParamsCopyWith<$Res> {
  factory _$SearchParamsCopyWith(_SearchParams value, $Res Function(_SearchParams) _then) = __$SearchParamsCopyWithImpl;
@override @useResult
$Res call({
 String query, bool reset
});




}
/// @nodoc
class __$SearchParamsCopyWithImpl<$Res>
    implements _$SearchParamsCopyWith<$Res> {
  __$SearchParamsCopyWithImpl(this._self, this._then);

  final _SearchParams _self;
  final $Res Function(_SearchParams) _then;

/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? reset = null,}) {
  return _then(_SearchParams(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,reset: null == reset ? _self.reset : reset // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SearchResult {

 int get page; List<SearchItem> get results;
/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultCopyWith<SearchResult> get copyWith => _$SearchResultCopyWithImpl<SearchResult>(this as SearchResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResult&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results));
}


@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'SearchResult(page: $page, results: $results)';
}


}

/// @nodoc
abstract mixin class $SearchResultCopyWith<$Res>  {
  factory $SearchResultCopyWith(SearchResult value, $Res Function(SearchResult) _then) = _$SearchResultCopyWithImpl;
@useResult
$Res call({
 int page, List<SearchItem> results
});




}
/// @nodoc
class _$SearchResultCopyWithImpl<$Res>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._self, this._then);

  final SearchResult _self;
  final $Res Function(SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResult].
extension SearchResultPatterns on SearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResult value)  $default,){
final _that = this;
switch (_that) {
case _SearchResult():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<SearchItem> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that.page,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<SearchItem> results)  $default,) {final _that = this;
switch (_that) {
case _SearchResult():
return $default(_that.page,_that.results);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<SearchItem> results)?  $default,) {final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that.page,_that.results);case _:
  return null;

}
}

}

/// @nodoc


class _SearchResult implements SearchResult {
   _SearchResult({required this.page, required final  List<SearchItem> results}): _results = results;
  

@override final  int page;
 final  List<SearchItem> _results;
@override List<SearchItem> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultCopyWith<_SearchResult> get copyWith => __$SearchResultCopyWithImpl<_SearchResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResult&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'SearchResult(page: $page, results: $results)';
}


}

/// @nodoc
abstract mixin class _$SearchResultCopyWith<$Res> implements $SearchResultCopyWith<$Res> {
  factory _$SearchResultCopyWith(_SearchResult value, $Res Function(_SearchResult) _then) = __$SearchResultCopyWithImpl;
@override @useResult
$Res call({
 int page, List<SearchItem> results
});




}
/// @nodoc
class __$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCopyWith<$Res> {
  __$SearchResultCopyWithImpl(this._self, this._then);

  final _SearchResult _self;
  final $Res Function(_SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,}) {
  return _then(_SearchResult(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchItem>,
  ));
}


}

/// @nodoc
mixin _$SearchItem {

 String get name; int get id;
/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchItemCopyWith<SearchItem> get copyWith => _$SearchItemCopyWithImpl<SearchItem>(this as SearchItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,name,id);

@override
String toString() {
  return 'SearchItem(name: $name, id: $id)';
}


}

/// @nodoc
abstract mixin class $SearchItemCopyWith<$Res>  {
  factory $SearchItemCopyWith(SearchItem value, $Res Function(SearchItem) _then) = _$SearchItemCopyWithImpl;
@useResult
$Res call({
 String name, int id
});




}
/// @nodoc
class _$SearchItemCopyWithImpl<$Res>
    implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._self, this._then);

  final SearchItem _self;
  final $Res Function(SearchItem) _then;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchItem].
extension SearchItemPatterns on SearchItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MovieSearchItem value)?  movie,TResult Function( TvShowSearchItem value)?  tvShow,TResult Function( PersonSearchItem value)?  person,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MovieSearchItem() when movie != null:
return movie(_that);case TvShowSearchItem() when tvShow != null:
return tvShow(_that);case PersonSearchItem() when person != null:
return person(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MovieSearchItem value)  movie,required TResult Function( TvShowSearchItem value)  tvShow,required TResult Function( PersonSearchItem value)  person,}){
final _that = this;
switch (_that) {
case MovieSearchItem():
return movie(_that);case TvShowSearchItem():
return tvShow(_that);case PersonSearchItem():
return person(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MovieSearchItem value)?  movie,TResult? Function( TvShowSearchItem value)?  tvShow,TResult? Function( PersonSearchItem value)?  person,}){
final _that = this;
switch (_that) {
case MovieSearchItem() when movie != null:
return movie(_that);case TvShowSearchItem() when tvShow != null:
return tvShow(_that);case PersonSearchItem() when person != null:
return person(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  DateTime? date,  String? poster,  String? backdrop,  int id,  String? backdropThumb)?  movie,TResult Function( String name,  DateTime? date,  String? poster,  String? backdrop,  int id,  String? backdropThumb)?  tvShow,TResult Function( int id,  String name,  String? profilePicture)?  person,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MovieSearchItem() when movie != null:
return movie(_that.name,_that.date,_that.poster,_that.backdrop,_that.id,_that.backdropThumb);case TvShowSearchItem() when tvShow != null:
return tvShow(_that.name,_that.date,_that.poster,_that.backdrop,_that.id,_that.backdropThumb);case PersonSearchItem() when person != null:
return person(_that.id,_that.name,_that.profilePicture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  DateTime? date,  String? poster,  String? backdrop,  int id,  String? backdropThumb)  movie,required TResult Function( String name,  DateTime? date,  String? poster,  String? backdrop,  int id,  String? backdropThumb)  tvShow,required TResult Function( int id,  String name,  String? profilePicture)  person,}) {final _that = this;
switch (_that) {
case MovieSearchItem():
return movie(_that.name,_that.date,_that.poster,_that.backdrop,_that.id,_that.backdropThumb);case TvShowSearchItem():
return tvShow(_that.name,_that.date,_that.poster,_that.backdrop,_that.id,_that.backdropThumb);case PersonSearchItem():
return person(_that.id,_that.name,_that.profilePicture);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  DateTime? date,  String? poster,  String? backdrop,  int id,  String? backdropThumb)?  movie,TResult? Function( String name,  DateTime? date,  String? poster,  String? backdrop,  int id,  String? backdropThumb)?  tvShow,TResult? Function( int id,  String name,  String? profilePicture)?  person,}) {final _that = this;
switch (_that) {
case MovieSearchItem() when movie != null:
return movie(_that.name,_that.date,_that.poster,_that.backdrop,_that.id,_that.backdropThumb);case TvShowSearchItem() when tvShow != null:
return tvShow(_that.name,_that.date,_that.poster,_that.backdrop,_that.id,_that.backdropThumb);case PersonSearchItem() when person != null:
return person(_that.id,_that.name,_that.profilePicture);case _:
  return null;

}
}

}

/// @nodoc


class MovieSearchItem implements SearchItem {
  const MovieSearchItem({required this.name, required this.date, required this.poster, required this.backdrop, required this.id, required this.backdropThumb});
  

@override final  String name;
 final  DateTime? date;
 final  String? poster;
 final  String? backdrop;
@override final  int id;
 final  String? backdropThumb;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieSearchItemCopyWith<MovieSearchItem> get copyWith => _$MovieSearchItemCopyWithImpl<MovieSearchItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieSearchItem&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.poster, poster) || other.poster == poster)&&(identical(other.backdrop, backdrop) || other.backdrop == backdrop)&&(identical(other.id, id) || other.id == id)&&(identical(other.backdropThumb, backdropThumb) || other.backdropThumb == backdropThumb));
}


@override
int get hashCode => Object.hash(runtimeType,name,date,poster,backdrop,id,backdropThumb);

@override
String toString() {
  return 'SearchItem.movie(name: $name, date: $date, poster: $poster, backdrop: $backdrop, id: $id, backdropThumb: $backdropThumb)';
}


}

/// @nodoc
abstract mixin class $MovieSearchItemCopyWith<$Res> implements $SearchItemCopyWith<$Res> {
  factory $MovieSearchItemCopyWith(MovieSearchItem value, $Res Function(MovieSearchItem) _then) = _$MovieSearchItemCopyWithImpl;
@override @useResult
$Res call({
 String name, DateTime? date, String? poster, String? backdrop, int id, String? backdropThumb
});




}
/// @nodoc
class _$MovieSearchItemCopyWithImpl<$Res>
    implements $MovieSearchItemCopyWith<$Res> {
  _$MovieSearchItemCopyWithImpl(this._self, this._then);

  final MovieSearchItem _self;
  final $Res Function(MovieSearchItem) _then;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? date = freezed,Object? poster = freezed,Object? backdrop = freezed,Object? id = null,Object? backdropThumb = freezed,}) {
  return _then(MovieSearchItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,backdrop: freezed == backdrop ? _self.backdrop : backdrop // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,backdropThumb: freezed == backdropThumb ? _self.backdropThumb : backdropThumb // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TvShowSearchItem implements SearchItem {
  const TvShowSearchItem({required this.name, required this.date, required this.poster, required this.backdrop, required this.id, required this.backdropThumb});
  

@override final  String name;
 final  DateTime? date;
 final  String? poster;
 final  String? backdrop;
@override final  int id;
 final  String? backdropThumb;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvShowSearchItemCopyWith<TvShowSearchItem> get copyWith => _$TvShowSearchItemCopyWithImpl<TvShowSearchItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvShowSearchItem&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.poster, poster) || other.poster == poster)&&(identical(other.backdrop, backdrop) || other.backdrop == backdrop)&&(identical(other.id, id) || other.id == id)&&(identical(other.backdropThumb, backdropThumb) || other.backdropThumb == backdropThumb));
}


@override
int get hashCode => Object.hash(runtimeType,name,date,poster,backdrop,id,backdropThumb);

@override
String toString() {
  return 'SearchItem.tvShow(name: $name, date: $date, poster: $poster, backdrop: $backdrop, id: $id, backdropThumb: $backdropThumb)';
}


}

/// @nodoc
abstract mixin class $TvShowSearchItemCopyWith<$Res> implements $SearchItemCopyWith<$Res> {
  factory $TvShowSearchItemCopyWith(TvShowSearchItem value, $Res Function(TvShowSearchItem) _then) = _$TvShowSearchItemCopyWithImpl;
@override @useResult
$Res call({
 String name, DateTime? date, String? poster, String? backdrop, int id, String? backdropThumb
});




}
/// @nodoc
class _$TvShowSearchItemCopyWithImpl<$Res>
    implements $TvShowSearchItemCopyWith<$Res> {
  _$TvShowSearchItemCopyWithImpl(this._self, this._then);

  final TvShowSearchItem _self;
  final $Res Function(TvShowSearchItem) _then;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? date = freezed,Object? poster = freezed,Object? backdrop = freezed,Object? id = null,Object? backdropThumb = freezed,}) {
  return _then(TvShowSearchItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,backdrop: freezed == backdrop ? _self.backdrop : backdrop // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,backdropThumb: freezed == backdropThumb ? _self.backdropThumb : backdropThumb // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class PersonSearchItem implements SearchItem {
  const PersonSearchItem({required this.id, required this.name, required this.profilePicture});
  

@override final  int id;
@override final  String name;
 final  String? profilePicture;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonSearchItemCopyWith<PersonSearchItem> get copyWith => _$PersonSearchItemCopyWithImpl<PersonSearchItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonSearchItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profilePicture);

@override
String toString() {
  return 'SearchItem.person(id: $id, name: $name, profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class $PersonSearchItemCopyWith<$Res> implements $SearchItemCopyWith<$Res> {
  factory $PersonSearchItemCopyWith(PersonSearchItem value, $Res Function(PersonSearchItem) _then) = _$PersonSearchItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? profilePicture
});




}
/// @nodoc
class _$PersonSearchItemCopyWithImpl<$Res>
    implements $PersonSearchItemCopyWith<$Res> {
  _$PersonSearchItemCopyWithImpl(this._self, this._then);

  final PersonSearchItem _self;
  final $Res Function(PersonSearchItem) _then;

/// Create a copy of SearchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profilePicture = freezed,}) {
  return _then(PersonSearchItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
