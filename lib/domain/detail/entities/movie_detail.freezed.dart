// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cast {

 String get name; String get avatarUrl;
/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastCopyWith<Cast> get copyWith => _$CastCopyWithImpl<Cast>(this as Cast, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cast&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,avatarUrl);

@override
String toString() {
  return 'Cast(name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $CastCopyWith<$Res>  {
  factory $CastCopyWith(Cast value, $Res Function(Cast) _then) = _$CastCopyWithImpl;
@useResult
$Res call({
 String name, String avatarUrl
});




}
/// @nodoc
class _$CastCopyWithImpl<$Res>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._self, this._then);

  final Cast _self;
  final $Res Function(Cast) _then;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? avatarUrl = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Cast].
extension CastPatterns on Cast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cast value)  $default,){
final _that = this;
switch (_that) {
case _Cast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cast value)?  $default,){
final _that = this;
switch (_that) {
case _Cast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.name,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _Cast():
return $default(_that.name,_that.avatarUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.name,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Cast implements Cast {
   _Cast({required this.name, required this.avatarUrl});
  

@override final  String name;
@override final  String avatarUrl;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastCopyWith<_Cast> get copyWith => __$CastCopyWithImpl<_Cast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cast&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,avatarUrl);

@override
String toString() {
  return 'Cast(name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) _then) = __$CastCopyWithImpl;
@override @useResult
$Res call({
 String name, String avatarUrl
});




}
/// @nodoc
class __$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(this._self, this._then);

  final _Cast _self;
  final $Res Function(_Cast) _then;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? avatarUrl = null,}) {
  return _then(_Cast(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MovieDetail {

 int get id; String get title; String? get backdrop; String? get description; double? get rating; List<String>? get genre; int? get runtime; List<Cast>? get cast; DateTime? get releaseDate;
/// Create a copy of MovieDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailCopyWith<MovieDetail> get copyWith => _$MovieDetailCopyWithImpl<MovieDetail>(this as MovieDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdrop, backdrop) || other.backdrop == backdrop)&&(identical(other.description, description) || other.description == description)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.genre, genre)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&const DeepCollectionEquality().equals(other.cast, cast)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,backdrop,description,rating,const DeepCollectionEquality().hash(genre),runtime,const DeepCollectionEquality().hash(cast),releaseDate);

@override
String toString() {
  return 'MovieDetail(id: $id, title: $title, backdrop: $backdrop, description: $description, rating: $rating, genre: $genre, runtime: $runtime, cast: $cast, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $MovieDetailCopyWith<$Res>  {
  factory $MovieDetailCopyWith(MovieDetail value, $Res Function(MovieDetail) _then) = _$MovieDetailCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? backdrop, String? description, double? rating, List<String>? genre, int? runtime, List<Cast>? cast, DateTime? releaseDate
});




}
/// @nodoc
class _$MovieDetailCopyWithImpl<$Res>
    implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._self, this._then);

  final MovieDetail _self;
  final $Res Function(MovieDetail) _then;

/// Create a copy of MovieDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? backdrop = freezed,Object? description = freezed,Object? rating = freezed,Object? genre = freezed,Object? runtime = freezed,Object? cast = freezed,Object? releaseDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdrop: freezed == backdrop ? _self.backdrop : backdrop // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as List<String>?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,cast: freezed == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetail].
extension MovieDetailPatterns on MovieDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetail value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetail value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? backdrop,  String? description,  double? rating,  List<String>? genre,  int? runtime,  List<Cast>? cast,  DateTime? releaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetail() when $default != null:
return $default(_that.id,_that.title,_that.backdrop,_that.description,_that.rating,_that.genre,_that.runtime,_that.cast,_that.releaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? backdrop,  String? description,  double? rating,  List<String>? genre,  int? runtime,  List<Cast>? cast,  DateTime? releaseDate)  $default,) {final _that = this;
switch (_that) {
case _MovieDetail():
return $default(_that.id,_that.title,_that.backdrop,_that.description,_that.rating,_that.genre,_that.runtime,_that.cast,_that.releaseDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? backdrop,  String? description,  double? rating,  List<String>? genre,  int? runtime,  List<Cast>? cast,  DateTime? releaseDate)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetail() when $default != null:
return $default(_that.id,_that.title,_that.backdrop,_that.description,_that.rating,_that.genre,_that.runtime,_that.cast,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetail implements MovieDetail {
   _MovieDetail({required this.id, required this.title, required this.backdrop, this.description, this.rating, final  List<String>? genre, this.runtime, final  List<Cast>? cast, this.releaseDate}): _genre = genre,_cast = cast;
  

@override final  int id;
@override final  String title;
@override final  String? backdrop;
@override final  String? description;
@override final  double? rating;
 final  List<String>? _genre;
@override List<String>? get genre {
  final value = _genre;
  if (value == null) return null;
  if (_genre is EqualUnmodifiableListView) return _genre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? runtime;
 final  List<Cast>? _cast;
@override List<Cast>? get cast {
  final value = _cast;
  if (value == null) return null;
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? releaseDate;

/// Create a copy of MovieDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailCopyWith<_MovieDetail> get copyWith => __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdrop, backdrop) || other.backdrop == backdrop)&&(identical(other.description, description) || other.description == description)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._genre, _genre)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&const DeepCollectionEquality().equals(other._cast, _cast)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,backdrop,description,rating,const DeepCollectionEquality().hash(_genre),runtime,const DeepCollectionEquality().hash(_cast),releaseDate);

@override
String toString() {
  return 'MovieDetail(id: $id, title: $title, backdrop: $backdrop, description: $description, rating: $rating, genre: $genre, runtime: $runtime, cast: $cast, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailCopyWith<$Res> implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(_MovieDetail value, $Res Function(_MovieDetail) _then) = __$MovieDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? backdrop, String? description, double? rating, List<String>? genre, int? runtime, List<Cast>? cast, DateTime? releaseDate
});




}
/// @nodoc
class __$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(this._self, this._then);

  final _MovieDetail _self;
  final $Res Function(_MovieDetail) _then;

/// Create a copy of MovieDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? backdrop = freezed,Object? description = freezed,Object? rating = freezed,Object? genre = freezed,Object? runtime = freezed,Object? cast = freezed,Object? releaseDate = freezed,}) {
  return _then(_MovieDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdrop: freezed == backdrop ? _self.backdrop : backdrop // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,genre: freezed == genre ? _self._genre : genre // ignore: cast_nullable_to_non_nullable
as List<String>?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,cast: freezed == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$MovieDetailParams {

 int get id; String get title; String? get backdropUrl; Type get type;
/// Create a copy of MovieDetailParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailParamsCopyWith<MovieDetailParams> get copyWith => _$MovieDetailParamsCopyWithImpl<MovieDetailParams>(this as MovieDetailParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailParams&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropUrl, backdropUrl) || other.backdropUrl == backdropUrl)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,backdropUrl,type);

@override
String toString() {
  return 'MovieDetailParams(id: $id, title: $title, backdropUrl: $backdropUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class $MovieDetailParamsCopyWith<$Res>  {
  factory $MovieDetailParamsCopyWith(MovieDetailParams value, $Res Function(MovieDetailParams) _then) = _$MovieDetailParamsCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? backdropUrl, Type type
});




}
/// @nodoc
class _$MovieDetailParamsCopyWithImpl<$Res>
    implements $MovieDetailParamsCopyWith<$Res> {
  _$MovieDetailParamsCopyWithImpl(this._self, this._then);

  final MovieDetailParams _self;
  final $Res Function(MovieDetailParams) _then;

/// Create a copy of MovieDetailParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? backdropUrl = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdropUrl: freezed == backdropUrl ? _self.backdropUrl : backdropUrl // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailParams].
extension MovieDetailParamsPatterns on MovieDetailParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailParams value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailParams value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? backdropUrl,  Type type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailParams() when $default != null:
return $default(_that.id,_that.title,_that.backdropUrl,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? backdropUrl,  Type type)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailParams():
return $default(_that.id,_that.title,_that.backdropUrl,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? backdropUrl,  Type type)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailParams() when $default != null:
return $default(_that.id,_that.title,_that.backdropUrl,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailParams implements MovieDetailParams {
   _MovieDetailParams({required this.id, required this.title, required this.backdropUrl, required this.type});
  

@override final  int id;
@override final  String title;
@override final  String? backdropUrl;
@override final  Type type;

/// Create a copy of MovieDetailParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailParamsCopyWith<_MovieDetailParams> get copyWith => __$MovieDetailParamsCopyWithImpl<_MovieDetailParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailParams&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropUrl, backdropUrl) || other.backdropUrl == backdropUrl)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,backdropUrl,type);

@override
String toString() {
  return 'MovieDetailParams(id: $id, title: $title, backdropUrl: $backdropUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailParamsCopyWith<$Res> implements $MovieDetailParamsCopyWith<$Res> {
  factory _$MovieDetailParamsCopyWith(_MovieDetailParams value, $Res Function(_MovieDetailParams) _then) = __$MovieDetailParamsCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? backdropUrl, Type type
});




}
/// @nodoc
class __$MovieDetailParamsCopyWithImpl<$Res>
    implements _$MovieDetailParamsCopyWith<$Res> {
  __$MovieDetailParamsCopyWithImpl(this._self, this._then);

  final _MovieDetailParams _self;
  final $Res Function(_MovieDetailParams) _then;

/// Create a copy of MovieDetailParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? backdropUrl = freezed,Object? type = null,}) {
  return _then(_MovieDetailParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdropUrl: freezed == backdropUrl ? _self.backdropUrl : backdropUrl // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,
  ));
}


}

// dart format on
