// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeModelTearOff {
  const _$HomeModelTearOff();

  _HomeModel call(
      {required String name,
      required String imageUrl,
      required List<MovieItem> popularMovies,
      required List<TvShowItem> popularTvShows,
      required List<MovieItem> discoverMovies}) {
    return _HomeModel(
      name: name,
      imageUrl: imageUrl,
      popularMovies: popularMovies,
      popularTvShows: popularTvShows,
      discoverMovies: discoverMovies,
    );
  }
}

/// @nodoc
const $HomeModel = _$HomeModelTearOff();

/// @nodoc
mixin _$HomeModel {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<MovieItem> get popularMovies => throw _privateConstructorUsedError;
  List<TvShowItem> get popularTvShows => throw _privateConstructorUsedError;
  List<MovieItem> get discoverMovies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String imageUrl,
      List<MovieItem> popularMovies,
      List<TvShowItem> popularTvShows,
      List<MovieItem> discoverMovies});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  final HomeModel _value;
  // ignore: unused_field
  final $Res Function(HomeModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? popularMovies = freezed,
    Object? popularTvShows = freezed,
    Object? discoverMovies = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      popularMovies: popularMovies == freezed
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
      popularTvShows: popularTvShows == freezed
          ? _value.popularTvShows
          : popularTvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowItem>,
      discoverMovies: discoverMovies == freezed
          ? _value.discoverMovies
          : discoverMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
    ));
  }
}

/// @nodoc
abstract class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(
          _HomeModel value, $Res Function(_HomeModel) then) =
      __$HomeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String imageUrl,
      List<MovieItem> popularMovies,
      List<TvShowItem> popularTvShows,
      List<MovieItem> discoverMovies});
}

/// @nodoc
class __$HomeModelCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(_HomeModel _value, $Res Function(_HomeModel) _then)
      : super(_value, (v) => _then(v as _HomeModel));

  @override
  _HomeModel get _value => super._value as _HomeModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? popularMovies = freezed,
    Object? popularTvShows = freezed,
    Object? discoverMovies = freezed,
  }) {
    return _then(_HomeModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      popularMovies: popularMovies == freezed
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
      popularTvShows: popularTvShows == freezed
          ? _value.popularTvShows
          : popularTvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowItem>,
      discoverMovies: discoverMovies == freezed
          ? _value.discoverMovies
          : discoverMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
    ));
  }
}

/// @nodoc

class _$_HomeModel implements _HomeModel {
  _$_HomeModel(
      {required this.name,
      required this.imageUrl,
      required this.popularMovies,
      required this.popularTvShows,
      required this.discoverMovies});

  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final List<MovieItem> popularMovies;
  @override
  final List<TvShowItem> popularTvShows;
  @override
  final List<MovieItem> discoverMovies;

  @override
  String toString() {
    return 'HomeModel(name: $name, imageUrl: $imageUrl, popularMovies: $popularMovies, popularTvShows: $popularTvShows, discoverMovies: $discoverMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.popularMovies, popularMovies) &&
            const DeepCollectionEquality()
                .equals(other.popularTvShows, popularTvShows) &&
            const DeepCollectionEquality()
                .equals(other.discoverMovies, discoverMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(popularMovies),
      const DeepCollectionEquality().hash(popularTvShows),
      const DeepCollectionEquality().hash(discoverMovies));

  @JsonKey(ignore: true)
  @override
  _$HomeModelCopyWith<_HomeModel> get copyWith =>
      __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel(
      {required String name,
      required String imageUrl,
      required List<MovieItem> popularMovies,
      required List<TvShowItem> popularTvShows,
      required List<MovieItem> discoverMovies}) = _$_HomeModel;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  List<MovieItem> get popularMovies;
  @override
  List<TvShowItem> get popularTvShows;
  @override
  List<MovieItem> get discoverMovies;
  @override
  @JsonKey(ignore: true)
  _$HomeModelCopyWith<_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
