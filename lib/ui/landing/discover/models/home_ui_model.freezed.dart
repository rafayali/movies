// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeModel {
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
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
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {String? name,
      String? imageUrl,
      List<MovieItem> popularMovies,
      List<TvShowItem> popularTvShows,
      List<MovieItem> discoverMovies});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? popularMovies = null,
    Object? popularTvShows = null,
    Object? discoverMovies = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      popularMovies: null == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
      popularTvShows: null == popularTvShows
          ? _value.popularTvShows
          : popularTvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowItem>,
      discoverMovies: null == discoverMovies
          ? _value.discoverMovies
          : discoverMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? imageUrl,
      List<MovieItem> popularMovies,
      List<TvShowItem> popularTvShows,
      List<MovieItem> discoverMovies});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$_HomeModel>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? popularMovies = null,
    Object? popularTvShows = null,
    Object? discoverMovies = null,
  }) {
    return _then(_$_HomeModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieItem>,
      popularTvShows: null == popularTvShows
          ? _value._popularTvShows
          : popularTvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowItem>,
      discoverMovies: null == discoverMovies
          ? _value._discoverMovies
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
      required final List<MovieItem> popularMovies,
      required final List<TvShowItem> popularTvShows,
      required final List<MovieItem> discoverMovies})
      : _popularMovies = popularMovies,
        _popularTvShows = popularTvShows,
        _discoverMovies = discoverMovies;

  @override
  final String? name;
  @override
  final String? imageUrl;
  final List<MovieItem> _popularMovies;
  @override
  List<MovieItem> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  final List<TvShowItem> _popularTvShows;
  @override
  List<TvShowItem> get popularTvShows {
    if (_popularTvShows is EqualUnmodifiableListView) return _popularTvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTvShows);
  }

  final List<MovieItem> _discoverMovies;
  @override
  List<MovieItem> get discoverMovies {
    if (_discoverMovies is EqualUnmodifiableListView) return _discoverMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discoverMovies);
  }

  @override
  String toString() {
    return 'HomeModel(name: $name, imageUrl: $imageUrl, popularMovies: $popularMovies, popularTvShows: $popularTvShows, discoverMovies: $discoverMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            const DeepCollectionEquality()
                .equals(other._popularTvShows, _popularTvShows) &&
            const DeepCollectionEquality()
                .equals(other._discoverMovies, _discoverMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(_popularMovies),
      const DeepCollectionEquality().hash(_popularTvShows),
      const DeepCollectionEquality().hash(_discoverMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel(
      {required final String? name,
      required final String? imageUrl,
      required final List<MovieItem> popularMovies,
      required final List<TvShowItem> popularTvShows,
      required final List<MovieItem> discoverMovies}) = _$_HomeModel;

  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  List<MovieItem> get popularMovies;
  @override
  List<TvShowItem> get popularTvShows;
  @override
  List<MovieItem> get discoverMovies;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
