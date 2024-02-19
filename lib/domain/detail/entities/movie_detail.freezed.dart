// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Cast {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastImplCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$CastImplCopyWith(
          _$CastImpl value, $Res Function(_$CastImpl) then) =
      __$$CastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class __$$CastImplCopyWithImpl<$Res>
    extends _$CastCopyWithImpl<$Res, _$CastImpl>
    implements _$$CastImplCopyWith<$Res> {
  __$$CastImplCopyWithImpl(_$CastImpl _value, $Res Function(_$CastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$CastImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CastImpl implements _Cast {
  _$CastImpl({required this.name, required this.avatarUrl});

  @override
  final String name;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'Cast(name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      __$$CastImplCopyWithImpl<_$CastImpl>(this, _$identity);
}

abstract class _Cast implements Cast {
  factory _Cast({required final String name, required final String avatarUrl}) =
      _$CastImpl;

  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetail {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get backdrop => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<String>? get genre => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res, MovieDetail>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? backdrop,
      String? description,
      double? rating,
      List<String>? genre,
      int? runtime,
      List<Cast>? cast,
      DateTime? releaseDate});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res, $Val extends MovieDetail>
    implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdrop = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? genre = freezed,
    Object? runtime = freezed,
    Object? cast = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop: freezed == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailImplCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$$MovieDetailImplCopyWith(
          _$MovieDetailImpl value, $Res Function(_$MovieDetailImpl) then) =
      __$$MovieDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? backdrop,
      String? description,
      double? rating,
      List<String>? genre,
      int? runtime,
      List<Cast>? cast,
      DateTime? releaseDate});
}

/// @nodoc
class __$$MovieDetailImplCopyWithImpl<$Res>
    extends _$MovieDetailCopyWithImpl<$Res, _$MovieDetailImpl>
    implements _$$MovieDetailImplCopyWith<$Res> {
  __$$MovieDetailImplCopyWithImpl(
      _$MovieDetailImpl _value, $Res Function(_$MovieDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdrop = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? genre = freezed,
    Object? runtime = freezed,
    Object? cast = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$MovieDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop: freezed == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      genre: freezed == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$MovieDetailImpl implements _MovieDetail {
  _$MovieDetailImpl(
      {required this.id,
      required this.title,
      required this.backdrop,
      this.description,
      this.rating,
      final List<String>? genre,
      this.runtime,
      final List<Cast>? cast,
      this.releaseDate})
      : _genre = genre,
        _cast = cast;

  @override
  final int id;
  @override
  final String title;
  @override
  final String? backdrop;
  @override
  final String? description;
  @override
  final double? rating;
  final List<String>? _genre;
  @override
  List<String>? get genre {
    final value = _genre;
    if (value == null) return null;
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? runtime;
  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? releaseDate;

  @override
  String toString() {
    return 'MovieDetail(id: $id, title: $title, backdrop: $backdrop, description: $description, rating: $rating, genre: $genre, runtime: $runtime, cast: $cast, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      backdrop,
      description,
      rating,
      const DeepCollectionEquality().hash(_genre),
      runtime,
      const DeepCollectionEquality().hash(_cast),
      releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailImplCopyWith<_$MovieDetailImpl> get copyWith =>
      __$$MovieDetailImplCopyWithImpl<_$MovieDetailImpl>(this, _$identity);
}

abstract class _MovieDetail implements MovieDetail {
  factory _MovieDetail(
      {required final int id,
      required final String title,
      required final String? backdrop,
      final String? description,
      final double? rating,
      final List<String>? genre,
      final int? runtime,
      final List<Cast>? cast,
      final DateTime? releaseDate}) = _$MovieDetailImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get backdrop;
  @override
  String? get description;
  @override
  double? get rating;
  @override
  List<String>? get genre;
  @override
  int? get runtime;
  @override
  List<Cast>? get cast;
  @override
  DateTime? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailImplCopyWith<_$MovieDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailParams {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get backdropUrl => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailParamsCopyWith<MovieDetailParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailParamsCopyWith<$Res> {
  factory $MovieDetailParamsCopyWith(
          MovieDetailParams value, $Res Function(MovieDetailParams) then) =
      _$MovieDetailParamsCopyWithImpl<$Res, MovieDetailParams>;
  @useResult
  $Res call({int id, String title, String? backdropUrl, Type type});
}

/// @nodoc
class _$MovieDetailParamsCopyWithImpl<$Res, $Val extends MovieDetailParams>
    implements $MovieDetailParamsCopyWith<$Res> {
  _$MovieDetailParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropUrl = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropUrl: freezed == backdropUrl
          ? _value.backdropUrl
          : backdropUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailParamsImplCopyWith<$Res>
    implements $MovieDetailParamsCopyWith<$Res> {
  factory _$$MovieDetailParamsImplCopyWith(_$MovieDetailParamsImpl value,
          $Res Function(_$MovieDetailParamsImpl) then) =
      __$$MovieDetailParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String? backdropUrl, Type type});
}

/// @nodoc
class __$$MovieDetailParamsImplCopyWithImpl<$Res>
    extends _$MovieDetailParamsCopyWithImpl<$Res, _$MovieDetailParamsImpl>
    implements _$$MovieDetailParamsImplCopyWith<$Res> {
  __$$MovieDetailParamsImplCopyWithImpl(_$MovieDetailParamsImpl _value,
      $Res Function(_$MovieDetailParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropUrl = freezed,
    Object? type = null,
  }) {
    return _then(_$MovieDetailParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropUrl: freezed == backdropUrl
          ? _value.backdropUrl
          : backdropUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$MovieDetailParamsImpl implements _MovieDetailParams {
  _$MovieDetailParamsImpl(
      {required this.id,
      required this.title,
      required this.backdropUrl,
      required this.type});

  @override
  final int id;
  @override
  final String title;
  @override
  final String? backdropUrl;
  @override
  final Type type;

  @override
  String toString() {
    return 'MovieDetailParams(id: $id, title: $title, backdropUrl: $backdropUrl, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backdropUrl, backdropUrl) ||
                other.backdropUrl == backdropUrl) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, backdropUrl, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailParamsImplCopyWith<_$MovieDetailParamsImpl> get copyWith =>
      __$$MovieDetailParamsImplCopyWithImpl<_$MovieDetailParamsImpl>(
          this, _$identity);
}

abstract class _MovieDetailParams implements MovieDetailParams {
  factory _MovieDetailParams(
      {required final int id,
      required final String title,
      required final String? backdropUrl,
      required final Type type}) = _$MovieDetailParamsImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get backdropUrl;
  @override
  Type get type;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailParamsImplCopyWith<_$MovieDetailParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
