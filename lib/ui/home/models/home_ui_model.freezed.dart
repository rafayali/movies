// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUiModelTearOff {
  const _$HomeUiModelTearOff();

  _HomeUiModel call(
      {required String name,
      required String imageUrl,
      required List<MovieItemUiModel> popularMovies,
      required List<TvShowUiModel> popularTvShows,
      required List<MovieItemUiModel> discoverMovies}) {
    return _HomeUiModel(
      name: name,
      imageUrl: imageUrl,
      popularMovies: popularMovies,
      popularTvShows: popularTvShows,
      discoverMovies: discoverMovies,
    );
  }
}

/// @nodoc
const $HomeUiModel = _$HomeUiModelTearOff();

/// @nodoc
mixin _$HomeUiModel {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<MovieItemUiModel> get popularMovies =>
      throw _privateConstructorUsedError;
  List<TvShowUiModel> get popularTvShows => throw _privateConstructorUsedError;
  List<MovieItemUiModel> get discoverMovies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUiModelCopyWith<HomeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiModelCopyWith<$Res> {
  factory $HomeUiModelCopyWith(
          HomeUiModel value, $Res Function(HomeUiModel) then) =
      _$HomeUiModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String imageUrl,
      List<MovieItemUiModel> popularMovies,
      List<TvShowUiModel> popularTvShows,
      List<MovieItemUiModel> discoverMovies});
}

/// @nodoc
class _$HomeUiModelCopyWithImpl<$Res> implements $HomeUiModelCopyWith<$Res> {
  _$HomeUiModelCopyWithImpl(this._value, this._then);

  final HomeUiModel _value;
  // ignore: unused_field
  final $Res Function(HomeUiModel) _then;

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
              as List<MovieItemUiModel>,
      popularTvShows: popularTvShows == freezed
          ? _value.popularTvShows
          : popularTvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowUiModel>,
      discoverMovies: discoverMovies == freezed
          ? _value.discoverMovies
          : discoverMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItemUiModel>,
    ));
  }
}

/// @nodoc
abstract class _$HomeUiModelCopyWith<$Res>
    implements $HomeUiModelCopyWith<$Res> {
  factory _$HomeUiModelCopyWith(
          _HomeUiModel value, $Res Function(_HomeUiModel) then) =
      __$HomeUiModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String imageUrl,
      List<MovieItemUiModel> popularMovies,
      List<TvShowUiModel> popularTvShows,
      List<MovieItemUiModel> discoverMovies});
}

/// @nodoc
class __$HomeUiModelCopyWithImpl<$Res> extends _$HomeUiModelCopyWithImpl<$Res>
    implements _$HomeUiModelCopyWith<$Res> {
  __$HomeUiModelCopyWithImpl(
      _HomeUiModel _value, $Res Function(_HomeUiModel) _then)
      : super(_value, (v) => _then(v as _HomeUiModel));

  @override
  _HomeUiModel get _value => super._value as _HomeUiModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? popularMovies = freezed,
    Object? popularTvShows = freezed,
    Object? discoverMovies = freezed,
  }) {
    return _then(_HomeUiModel(
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
              as List<MovieItemUiModel>,
      popularTvShows: popularTvShows == freezed
          ? _value.popularTvShows
          : popularTvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowUiModel>,
      discoverMovies: discoverMovies == freezed
          ? _value.discoverMovies
          : discoverMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItemUiModel>,
    ));
  }
}

/// @nodoc

class _$_HomeUiModel implements _HomeUiModel {
  _$_HomeUiModel(
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
  final List<MovieItemUiModel> popularMovies;
  @override
  final List<TvShowUiModel> popularTvShows;
  @override
  final List<MovieItemUiModel> discoverMovies;

  @override
  String toString() {
    return 'HomeUiModel(name: $name, imageUrl: $imageUrl, popularMovies: $popularMovies, popularTvShows: $popularTvShows, discoverMovies: $discoverMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeUiModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.popularMovies, popularMovies) ||
                const DeepCollectionEquality()
                    .equals(other.popularMovies, popularMovies)) &&
            (identical(other.popularTvShows, popularTvShows) ||
                const DeepCollectionEquality()
                    .equals(other.popularTvShows, popularTvShows)) &&
            (identical(other.discoverMovies, discoverMovies) ||
                const DeepCollectionEquality()
                    .equals(other.discoverMovies, discoverMovies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(popularMovies) ^
      const DeepCollectionEquality().hash(popularTvShows) ^
      const DeepCollectionEquality().hash(discoverMovies);

  @JsonKey(ignore: true)
  @override
  _$HomeUiModelCopyWith<_HomeUiModel> get copyWith =>
      __$HomeUiModelCopyWithImpl<_HomeUiModel>(this, _$identity);
}

abstract class _HomeUiModel implements HomeUiModel {
  factory _HomeUiModel(
      {required String name,
      required String imageUrl,
      required List<MovieItemUiModel> popularMovies,
      required List<TvShowUiModel> popularTvShows,
      required List<MovieItemUiModel> discoverMovies}) = _$_HomeUiModel;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  List<MovieItemUiModel> get popularMovies =>
      throw _privateConstructorUsedError;
  @override
  List<TvShowUiModel> get popularTvShows => throw _privateConstructorUsedError;
  @override
  List<MovieItemUiModel> get discoverMovies =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeUiModelCopyWith<_HomeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
