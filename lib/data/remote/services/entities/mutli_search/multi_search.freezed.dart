// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultiSearch {

 int get page; List<Entity> get results; int get totalPages; int get totalResults;
/// Create a copy of MultiSearch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultiSearchCopyWith<MultiSearch> get copyWith => _$MultiSearchCopyWithImpl<MultiSearch>(this as MultiSearch, _$identity);

  /// Serializes this MultiSearch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultiSearch&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'MultiSearch(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $MultiSearchCopyWith<$Res>  {
  factory $MultiSearchCopyWith(MultiSearch value, $Res Function(MultiSearch) _then) = _$MultiSearchCopyWithImpl;
@useResult
$Res call({
 int page, List<Entity> results, int totalPages, int totalResults
});




}
/// @nodoc
class _$MultiSearchCopyWithImpl<$Res>
    implements $MultiSearchCopyWith<$Res> {
  _$MultiSearchCopyWithImpl(this._self, this._then);

  final MultiSearch _self;
  final $Res Function(MultiSearch) _then;

/// Create a copy of MultiSearch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Entity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MultiSearch].
extension MultiSearchPatterns on MultiSearch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MultiSearch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultiSearch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MultiSearch value)  $default,){
final _that = this;
switch (_that) {
case _MultiSearch():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MultiSearch value)?  $default,){
final _that = this;
switch (_that) {
case _MultiSearch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<Entity> results,  int totalPages,  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultiSearch() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<Entity> results,  int totalPages,  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _MultiSearch():
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<Entity> results,  int totalPages,  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _MultiSearch() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MultiSearch implements MultiSearch {
   _MultiSearch({required this.page, required final  List<Entity> results, required this.totalPages, required this.totalResults}): _results = results;
  factory _MultiSearch.fromJson(Map<String, dynamic> json) => _$MultiSearchFromJson(json);

@override final  int page;
 final  List<Entity> _results;
@override List<Entity> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  int totalPages;
@override final  int totalResults;

/// Create a copy of MultiSearch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultiSearchCopyWith<_MultiSearch> get copyWith => __$MultiSearchCopyWithImpl<_MultiSearch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultiSearchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultiSearch&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'MultiSearch(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$MultiSearchCopyWith<$Res> implements $MultiSearchCopyWith<$Res> {
  factory _$MultiSearchCopyWith(_MultiSearch value, $Res Function(_MultiSearch) _then) = __$MultiSearchCopyWithImpl;
@override @useResult
$Res call({
 int page, List<Entity> results, int totalPages, int totalResults
});




}
/// @nodoc
class __$MultiSearchCopyWithImpl<$Res>
    implements _$MultiSearchCopyWith<$Res> {
  __$MultiSearchCopyWithImpl(this._self, this._then);

  final _MultiSearch _self;
  final $Res Function(_MultiSearch) _then;

/// Create a copy of MultiSearch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_MultiSearch(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Entity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

Entity _$EntityFromJson(
  Map<String, dynamic> json
) {
        switch (json['media_type']) {
                  case 'movie':
          return MovieEntity.fromJson(
            json
          );
                case 'tv':
          return TvShowEntity.fromJson(
            json
          );
                case 'person':
          return PersonEntity.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'media_type',
  'Entity',
  'Invalid union type "${json['media_type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Entity {

 int get id;
/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityCopyWith<Entity> get copyWith => _$EntityCopyWithImpl<Entity>(this as Entity, _$identity);

  /// Serializes this Entity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entity&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'Entity(id: $id)';
}


}

/// @nodoc
abstract mixin class $EntityCopyWith<$Res>  {
  factory $EntityCopyWith(Entity value, $Res Function(Entity) _then) = _$EntityCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$EntityCopyWithImpl<$Res>
    implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._self, this._then);

  final Entity _self;
  final $Res Function(Entity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Entity].
extension EntityPatterns on Entity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MovieEntity value)?  movie,TResult Function( TvShowEntity value)?  tvShow,TResult Function( PersonEntity value)?  person,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MovieEntity() when movie != null:
return movie(_that);case TvShowEntity() when tvShow != null:
return tvShow(_that);case PersonEntity() when person != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MovieEntity value)  movie,required TResult Function( TvShowEntity value)  tvShow,required TResult Function( PersonEntity value)  person,}){
final _that = this;
switch (_that) {
case MovieEntity():
return movie(_that);case TvShowEntity():
return tvShow(_that);case PersonEntity():
return person(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MovieEntity value)?  movie,TResult? Function( TvShowEntity value)?  tvShow,TResult? Function( PersonEntity value)?  person,}){
final _that = this;
switch (_that) {
case MovieEntity() when movie != null:
return movie(_that);case TvShowEntity() when tvShow != null:
return tvShow(_that);case PersonEntity() when person != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id,  String title,  String? backdropPath,  String? posterPath,  String? releaseDate)?  movie,TResult Function( int id,  String name,  String? backdropPath,  String? posterPath,  String? firstAirDate)?  tvShow,TResult Function( int id,  String name,  String? profilePath)?  person,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MovieEntity() when movie != null:
return movie(_that.id,_that.title,_that.backdropPath,_that.posterPath,_that.releaseDate);case TvShowEntity() when tvShow != null:
return tvShow(_that.id,_that.name,_that.backdropPath,_that.posterPath,_that.firstAirDate);case PersonEntity() when person != null:
return person(_that.id,_that.name,_that.profilePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id,  String title,  String? backdropPath,  String? posterPath,  String? releaseDate)  movie,required TResult Function( int id,  String name,  String? backdropPath,  String? posterPath,  String? firstAirDate)  tvShow,required TResult Function( int id,  String name,  String? profilePath)  person,}) {final _that = this;
switch (_that) {
case MovieEntity():
return movie(_that.id,_that.title,_that.backdropPath,_that.posterPath,_that.releaseDate);case TvShowEntity():
return tvShow(_that.id,_that.name,_that.backdropPath,_that.posterPath,_that.firstAirDate);case PersonEntity():
return person(_that.id,_that.name,_that.profilePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id,  String title,  String? backdropPath,  String? posterPath,  String? releaseDate)?  movie,TResult? Function( int id,  String name,  String? backdropPath,  String? posterPath,  String? firstAirDate)?  tvShow,TResult? Function( int id,  String name,  String? profilePath)?  person,}) {final _that = this;
switch (_that) {
case MovieEntity() when movie != null:
return movie(_that.id,_that.title,_that.backdropPath,_that.posterPath,_that.releaseDate);case TvShowEntity() when tvShow != null:
return tvShow(_that.id,_that.name,_that.backdropPath,_that.posterPath,_that.firstAirDate);case PersonEntity() when person != null:
return person(_that.id,_that.name,_that.profilePath);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieEntity implements Entity {
  const MovieEntity({required this.id, required this.title, required this.backdropPath, required this.posterPath, required this.releaseDate, final  String? $type}): $type = $type ?? 'movie';
  factory MovieEntity.fromJson(Map<String, dynamic> json) => _$MovieEntityFromJson(json);

@override final  int id;
 final  String title;
 final  String? backdropPath;
 final  String? posterPath;
 final  String? releaseDate;

@JsonKey(name: 'media_type')
final String $type;


/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieEntityCopyWith<MovieEntity> get copyWith => _$MovieEntityCopyWithImpl<MovieEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,backdropPath,posterPath,releaseDate);

@override
String toString() {
  return 'Entity.movie(id: $id, title: $title, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $MovieEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(MovieEntity value, $Res Function(MovieEntity) _then) = _$MovieEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? backdropPath, String? posterPath, String? releaseDate
});




}
/// @nodoc
class _$MovieEntityCopyWithImpl<$Res>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._self, this._then);

  final MovieEntity _self;
  final $Res Function(MovieEntity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? backdropPath = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,}) {
  return _then(MovieEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class TvShowEntity implements Entity {
  const TvShowEntity({required this.id, required this.name, required this.backdropPath, required this.posterPath, required this.firstAirDate, final  String? $type}): $type = $type ?? 'tv';
  factory TvShowEntity.fromJson(Map<String, dynamic> json) => _$TvShowEntityFromJson(json);

@override final  int id;
 final  String name;
 final  String? backdropPath;
 final  String? posterPath;
 final  String? firstAirDate;

@JsonKey(name: 'media_type')
final String $type;


/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvShowEntityCopyWith<TvShowEntity> get copyWith => _$TvShowEntityCopyWithImpl<TvShowEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvShowEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvShowEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,backdropPath,posterPath,firstAirDate);

@override
String toString() {
  return 'Entity.tvShow(id: $id, name: $name, backdropPath: $backdropPath, posterPath: $posterPath, firstAirDate: $firstAirDate)';
}


}

/// @nodoc
abstract mixin class $TvShowEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $TvShowEntityCopyWith(TvShowEntity value, $Res Function(TvShowEntity) _then) = _$TvShowEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? backdropPath, String? posterPath, String? firstAirDate
});




}
/// @nodoc
class _$TvShowEntityCopyWithImpl<$Res>
    implements $TvShowEntityCopyWith<$Res> {
  _$TvShowEntityCopyWithImpl(this._self, this._then);

  final TvShowEntity _self;
  final $Res Function(TvShowEntity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? backdropPath = freezed,Object? posterPath = freezed,Object? firstAirDate = freezed,}) {
  return _then(TvShowEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class PersonEntity implements Entity {
  const PersonEntity({required this.id, required this.name, required this.profilePath, final  String? $type}): $type = $type ?? 'person';
  factory PersonEntity.fromJson(Map<String, dynamic> json) => _$PersonEntityFromJson(json);

@override final  int id;
 final  String name;
 final  String? profilePath;

@JsonKey(name: 'media_type')
final String $type;


/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonEntityCopyWith<PersonEntity> get copyWith => _$PersonEntityCopyWithImpl<PersonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profilePath);

@override
String toString() {
  return 'Entity.person(id: $id, name: $name, profilePath: $profilePath)';
}


}

/// @nodoc
abstract mixin class $PersonEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $PersonEntityCopyWith(PersonEntity value, $Res Function(PersonEntity) _then) = _$PersonEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? profilePath
});




}
/// @nodoc
class _$PersonEntityCopyWithImpl<$Res>
    implements $PersonEntityCopyWith<$Res> {
  _$PersonEntityCopyWithImpl(this._self, this._then);

  final PersonEntity _self;
  final $Res Function(PersonEntity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profilePath = freezed,}) {
  return _then(PersonEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
