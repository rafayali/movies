// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeModel {

 String? get name; String? get imageUrl; List<MovieItem> get popularMovies; List<TvShowItem> get popularTvShows; List<MovieItem> get discoverMovies;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.popularMovies, popularMovies)&&const DeepCollectionEquality().equals(other.popularTvShows, popularTvShows)&&const DeepCollectionEquality().equals(other.discoverMovies, discoverMovies));
}


@override
int get hashCode => Object.hash(runtimeType,name,imageUrl,const DeepCollectionEquality().hash(popularMovies),const DeepCollectionEquality().hash(popularTvShows),const DeepCollectionEquality().hash(discoverMovies));

@override
String toString() {
  return 'HomeModel(name: $name, imageUrl: $imageUrl, popularMovies: $popularMovies, popularTvShows: $popularTvShows, discoverMovies: $discoverMovies)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? imageUrl, List<MovieItem> popularMovies, List<TvShowItem> popularTvShows, List<MovieItem> discoverMovies
});




}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? imageUrl = freezed,Object? popularMovies = null,Object? popularTvShows = null,Object? discoverMovies = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,popularMovies: null == popularMovies ? _self.popularMovies : popularMovies // ignore: cast_nullable_to_non_nullable
as List<MovieItem>,popularTvShows: null == popularTvShows ? _self.popularTvShows : popularTvShows // ignore: cast_nullable_to_non_nullable
as List<TvShowItem>,discoverMovies: null == discoverMovies ? _self.discoverMovies : discoverMovies // ignore: cast_nullable_to_non_nullable
as List<MovieItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? imageUrl,  List<MovieItem> popularMovies,  List<TvShowItem> popularTvShows,  List<MovieItem> discoverMovies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.name,_that.imageUrl,_that.popularMovies,_that.popularTvShows,_that.discoverMovies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? imageUrl,  List<MovieItem> popularMovies,  List<TvShowItem> popularTvShows,  List<MovieItem> discoverMovies)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.name,_that.imageUrl,_that.popularMovies,_that.popularTvShows,_that.discoverMovies);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? imageUrl,  List<MovieItem> popularMovies,  List<TvShowItem> popularTvShows,  List<MovieItem> discoverMovies)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.name,_that.imageUrl,_that.popularMovies,_that.popularTvShows,_that.discoverMovies);case _:
  return null;

}
}

}

/// @nodoc


class _HomeModel implements HomeModel {
   _HomeModel({required this.name, required this.imageUrl, required final  List<MovieItem> popularMovies, required final  List<TvShowItem> popularTvShows, required final  List<MovieItem> discoverMovies}): _popularMovies = popularMovies,_popularTvShows = popularTvShows,_discoverMovies = discoverMovies;
  

@override final  String? name;
@override final  String? imageUrl;
 final  List<MovieItem> _popularMovies;
@override List<MovieItem> get popularMovies {
  if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularMovies);
}

 final  List<TvShowItem> _popularTvShows;
@override List<TvShowItem> get popularTvShows {
  if (_popularTvShows is EqualUnmodifiableListView) return _popularTvShows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularTvShows);
}

 final  List<MovieItem> _discoverMovies;
@override List<MovieItem> get discoverMovies {
  if (_discoverMovies is EqualUnmodifiableListView) return _discoverMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discoverMovies);
}


/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._popularMovies, _popularMovies)&&const DeepCollectionEquality().equals(other._popularTvShows, _popularTvShows)&&const DeepCollectionEquality().equals(other._discoverMovies, _discoverMovies));
}


@override
int get hashCode => Object.hash(runtimeType,name,imageUrl,const DeepCollectionEquality().hash(_popularMovies),const DeepCollectionEquality().hash(_popularTvShows),const DeepCollectionEquality().hash(_discoverMovies));

@override
String toString() {
  return 'HomeModel(name: $name, imageUrl: $imageUrl, popularMovies: $popularMovies, popularTvShows: $popularTvShows, discoverMovies: $discoverMovies)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? imageUrl, List<MovieItem> popularMovies, List<TvShowItem> popularTvShows, List<MovieItem> discoverMovies
});




}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? imageUrl = freezed,Object? popularMovies = null,Object? popularTvShows = null,Object? discoverMovies = null,}) {
  return _then(_HomeModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,popularMovies: null == popularMovies ? _self._popularMovies : popularMovies // ignore: cast_nullable_to_non_nullable
as List<MovieItem>,popularTvShows: null == popularTvShows ? _self._popularTvShows : popularTvShows // ignore: cast_nullable_to_non_nullable
as List<TvShowItem>,discoverMovies: null == discoverMovies ? _self._discoverMovies : discoverMovies // ignore: cast_nullable_to_non_nullable
as List<MovieItem>,
  ));
}


}

// dart format on
