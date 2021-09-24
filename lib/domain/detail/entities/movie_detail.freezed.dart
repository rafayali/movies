// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

  _Cast call({required String name, required String avatarUrl}) {
    return _Cast(
      name: name,
      avatarUrl: avatarUrl,
    );
  }
}

/// @nodoc
const $Cast = _$CastTearOff();

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
      _$CastCopyWithImpl<$Res>;
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_Cast(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Cast implements _Cast {
  _$_Cast({required this.name, required this.avatarUrl});

  @override
  final String name;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'Cast(name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);
}

abstract class _Cast implements Cast {
  factory _Cast({required String name, required String avatarUrl}) = _$_Cast;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CastCopyWith<_Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$MovieDetailTearOff {
  const _$MovieDetailTearOff();

  _MovieDetail call(
      {required int id,
      required String title,
      required String backdrop,
      String? description,
      double? rating,
      List<String>? genre,
      int? runtime,
      List<Cast>? cast,
      DateTime? releaseDate}) {
    return _MovieDetail(
      id: id,
      title: title,
      backdrop: backdrop,
      description: description,
      rating: rating,
      genre: genre,
      runtime: runtime,
      cast: cast,
      releaseDate: releaseDate,
    );
  }
}

/// @nodoc
const $MovieDetail = _$MovieDetailTearOff();

/// @nodoc
mixin _$MovieDetail {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get backdrop => throw _privateConstructorUsedError;
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
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String backdrop,
      String? description,
      double? rating,
      List<String>? genre,
      int? runtime,
      List<Cast>? cast,
      DateTime? releaseDate});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? backdrop = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? genre = freezed,
    Object? runtime = freezed,
    Object? cast = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop: backdrop == freezed
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(
          _MovieDetail value, $Res Function(_MovieDetail) then) =
      __$MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String backdrop,
      String? description,
      double? rating,
      List<String>? genre,
      int? runtime,
      List<Cast>? cast,
      DateTime? releaseDate});
}

/// @nodoc
class __$MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(
      _MovieDetail _value, $Res Function(_MovieDetail) _then)
      : super(_value, (v) => _then(v as _MovieDetail));

  @override
  _MovieDetail get _value => super._value as _MovieDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? backdrop = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? genre = freezed,
    Object? runtime = freezed,
    Object? cast = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_MovieDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop: backdrop == freezed
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_MovieDetail implements _MovieDetail {
  _$_MovieDetail(
      {required this.id,
      required this.title,
      required this.backdrop,
      this.description,
      this.rating,
      this.genre,
      this.runtime,
      this.cast,
      this.releaseDate});

  @override
  final int id;
  @override
  final String title;
  @override
  final String backdrop;
  @override
  final String? description;
  @override
  final double? rating;
  @override
  final List<String>? genre;
  @override
  final int? runtime;
  @override
  final List<Cast>? cast;
  @override
  final DateTime? releaseDate;

  @override
  String toString() {
    return 'MovieDetail(id: $id, title: $title, backdrop: $backdrop, description: $description, rating: $rating, genre: $genre, runtime: $runtime, cast: $cast, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.backdrop, backdrop) ||
                const DeepCollectionEquality()
                    .equals(other.backdrop, backdrop)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(backdrop) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(cast) ^
      const DeepCollectionEquality().hash(releaseDate);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);
}

abstract class _MovieDetail implements MovieDetail {
  factory _MovieDetail(
      {required int id,
      required String title,
      required String backdrop,
      String? description,
      double? rating,
      List<String>? genre,
      int? runtime,
      List<Cast>? cast,
      DateTime? releaseDate}) = _$_MovieDetail;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get backdrop => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  List<String>? get genre => throw _privateConstructorUsedError;
  @override
  int? get runtime => throw _privateConstructorUsedError;
  @override
  List<Cast>? get cast => throw _privateConstructorUsedError;
  @override
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MovieDetailParamsTearOff {
  const _$MovieDetailParamsTearOff();

  _MovieDetailParams call(
      {required int id,
      required String title,
      required String backdropUrl,
      required Type type}) {
    return _MovieDetailParams(
      id: id,
      title: title,
      backdropUrl: backdropUrl,
      type: type,
    );
  }
}

/// @nodoc
const $MovieDetailParams = _$MovieDetailParamsTearOff();

/// @nodoc
mixin _$MovieDetailParams {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get backdropUrl => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailParamsCopyWith<MovieDetailParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailParamsCopyWith<$Res> {
  factory $MovieDetailParamsCopyWith(
          MovieDetailParams value, $Res Function(MovieDetailParams) then) =
      _$MovieDetailParamsCopyWithImpl<$Res>;
  $Res call({int id, String title, String backdropUrl, Type type});
}

/// @nodoc
class _$MovieDetailParamsCopyWithImpl<$Res>
    implements $MovieDetailParamsCopyWith<$Res> {
  _$MovieDetailParamsCopyWithImpl(this._value, this._then);

  final MovieDetailParams _value;
  // ignore: unused_field
  final $Res Function(MovieDetailParams) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? backdropUrl = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropUrl: backdropUrl == freezed
          ? _value.backdropUrl
          : backdropUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailParamsCopyWith<$Res>
    implements $MovieDetailParamsCopyWith<$Res> {
  factory _$MovieDetailParamsCopyWith(
          _MovieDetailParams value, $Res Function(_MovieDetailParams) then) =
      __$MovieDetailParamsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String backdropUrl, Type type});
}

/// @nodoc
class __$MovieDetailParamsCopyWithImpl<$Res>
    extends _$MovieDetailParamsCopyWithImpl<$Res>
    implements _$MovieDetailParamsCopyWith<$Res> {
  __$MovieDetailParamsCopyWithImpl(
      _MovieDetailParams _value, $Res Function(_MovieDetailParams) _then)
      : super(_value, (v) => _then(v as _MovieDetailParams));

  @override
  _MovieDetailParams get _value => super._value as _MovieDetailParams;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? backdropUrl = freezed,
    Object? type = freezed,
  }) {
    return _then(_MovieDetailParams(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropUrl: backdropUrl == freezed
          ? _value.backdropUrl
          : backdropUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_MovieDetailParams implements _MovieDetailParams {
  _$_MovieDetailParams(
      {required this.id,
      required this.title,
      required this.backdropUrl,
      required this.type});

  @override
  final int id;
  @override
  final String title;
  @override
  final String backdropUrl;
  @override
  final Type type;

  @override
  String toString() {
    return 'MovieDetailParams(id: $id, title: $title, backdropUrl: $backdropUrl, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetailParams &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.backdropUrl, backdropUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backdropUrl, backdropUrl)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(backdropUrl) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailParamsCopyWith<_MovieDetailParams> get copyWith =>
      __$MovieDetailParamsCopyWithImpl<_MovieDetailParams>(this, _$identity);
}

abstract class _MovieDetailParams implements MovieDetailParams {
  factory _MovieDetailParams(
      {required int id,
      required String title,
      required String backdropUrl,
      required Type type}) = _$_MovieDetailParams;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get backdropUrl => throw _privateConstructorUsedError;
  @override
  Type get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailParamsCopyWith<_MovieDetailParams> get copyWith =>
      throw _privateConstructorUsedError;
}
