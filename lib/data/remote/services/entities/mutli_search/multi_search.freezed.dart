// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multi_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiSearch _$MultiSearchFromJson(Map<String, dynamic> json) {
  return _MultiSearch.fromJson(json);
}

/// @nodoc
class _$MultiSearchTearOff {
  const _$MultiSearchTearOff();

  _MultiSearch call(
      {required int page,
      required List<Entity> results,
      required int totalPages,
      required int totalResults}) {
    return _MultiSearch(
      page: page,
      results: results,
      totalPages: totalPages,
      totalResults: totalResults,
    );
  }

  MultiSearch fromJson(Map<String, Object?> json) {
    return MultiSearch.fromJson(json);
  }
}

/// @nodoc
const $MultiSearch = _$MultiSearchTearOff();

/// @nodoc
mixin _$MultiSearch {
  int get page => throw _privateConstructorUsedError;
  List<Entity> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiSearchCopyWith<MultiSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiSearchCopyWith<$Res> {
  factory $MultiSearchCopyWith(
          MultiSearch value, $Res Function(MultiSearch) then) =
      _$MultiSearchCopyWithImpl<$Res>;
  $Res call({int page, List<Entity> results, int totalPages, int totalResults});
}

/// @nodoc
class _$MultiSearchCopyWithImpl<$Res> implements $MultiSearchCopyWith<$Res> {
  _$MultiSearchCopyWithImpl(this._value, this._then);

  final MultiSearch _value;
  // ignore: unused_field
  final $Res Function(MultiSearch) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Entity>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MultiSearchCopyWith<$Res>
    implements $MultiSearchCopyWith<$Res> {
  factory _$MultiSearchCopyWith(
          _MultiSearch value, $Res Function(_MultiSearch) then) =
      __$MultiSearchCopyWithImpl<$Res>;
  @override
  $Res call({int page, List<Entity> results, int totalPages, int totalResults});
}

/// @nodoc
class __$MultiSearchCopyWithImpl<$Res> extends _$MultiSearchCopyWithImpl<$Res>
    implements _$MultiSearchCopyWith<$Res> {
  __$MultiSearchCopyWithImpl(
      _MultiSearch _value, $Res Function(_MultiSearch) _then)
      : super(_value, (v) => _then(v as _MultiSearch));

  @override
  _MultiSearch get _value => super._value as _MultiSearch;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_MultiSearch(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Entity>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MultiSearch implements _MultiSearch {
  _$_MultiSearch(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});

  factory _$_MultiSearch.fromJson(Map<String, dynamic> json) =>
      _$$_MultiSearchFromJson(json);

  @override
  final int page;
  @override
  final List<Entity> results;
  @override
  final int totalPages;
  @override
  final int totalResults;

  @override
  String toString() {
    return 'MultiSearch(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiSearch &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  _$MultiSearchCopyWith<_MultiSearch> get copyWith =>
      __$MultiSearchCopyWithImpl<_MultiSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiSearchToJson(this);
  }
}

abstract class _MultiSearch implements MultiSearch {
  factory _MultiSearch(
      {required int page,
      required List<Entity> results,
      required int totalPages,
      required int totalResults}) = _$_MultiSearch;

  factory _MultiSearch.fromJson(Map<String, dynamic> json) =
      _$_MultiSearch.fromJson;

  @override
  int get page;
  @override
  List<Entity> get results;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$MultiSearchCopyWith<_MultiSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

Entity _$EntityFromJson(Map<String, dynamic> json) {
  switch (json['media_type'] as String?) {
    case 'movie':
      return MovieEntity.fromJson(json);
    case 'tv':
      return TvShowEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'media_type', 'Entity',
          'Invalid union type "${json['media_type']}"!');
  }
}

/// @nodoc
class _$EntityTearOff {
  const _$EntityTearOff();

  MovieEntity movie(
      {required int id,
      required String title,
      required String? backdropPath,
      required String? posterPath,
      required String? releaseDate}) {
    return MovieEntity(
      id: id,
      title: title,
      backdropPath: backdropPath,
      posterPath: posterPath,
      releaseDate: releaseDate,
    );
  }

  TvShowEntity tvShow(
      {required int id,
      required String name,
      required String? backdropPath,
      required String? posterPath,
      required String? firstAirDate}) {
    return TvShowEntity(
      id: id,
      name: name,
      backdropPath: backdropPath,
      posterPath: posterPath,
      firstAirDate: firstAirDate,
    );
  }

  Entity fromJson(Map<String, Object?> json) {
    return Entity.fromJson(json);
  }
}

/// @nodoc
const $Entity = _$EntityTearOff();

/// @nodoc
mixin _$Entity {
  int get id => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieEntity value) movie,
    required TResult Function(TvShowEntity value) tvShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityCopyWith<Entity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityCopyWith<$Res> {
  factory $EntityCopyWith(Entity value, $Res Function(Entity) then) =
      _$EntityCopyWithImpl<$Res>;
  $Res call({int id, String? backdropPath, String? posterPath});
}

/// @nodoc
class _$EntityCopyWithImpl<$Res> implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._value, this._then);

  final Entity _value;
  // ignore: unused_field
  final $Res Function(Entity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? backdropPath,
      String? posterPath,
      String? releaseDate});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res> extends _$EntityCopyWithImpl<$Res>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(
      MovieEntity _value, $Res Function(MovieEntity) _then)
      : super(_value, (v) => _then(v as MovieEntity));

  @override
  MovieEntity get _value => super._value as MovieEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(MovieEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@FreezedUnionValue('movie')
@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieEntity implements MovieEntity {
  const _$MovieEntity(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.posterPath,
      required this.releaseDate});

  factory _$MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$$MovieEntityFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? backdropPath;
  @override
  final String? posterPath;
  @override
  final String? releaseDate;

  @override
  String toString() {
    return 'Entity.movie(id: $id, title: $title, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, backdropPath, posterPath, releaseDate);

  @JsonKey(ignore: true)
  @override
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      _$MovieEntityCopyWithImpl<MovieEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
  }) {
    return movie(id, title, backdropPath, posterPath, releaseDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
  }) {
    return movie?.call(id, title, backdropPath, posterPath, releaseDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(id, title, backdropPath, posterPath, releaseDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieEntity value) movie,
    required TResult Function(TvShowEntity value) tvShow,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieEntityToJson(this)..['media_type'] = 'movie';
  }
}

abstract class MovieEntity implements Entity {
  const factory MovieEntity(
      {required int id,
      required String title,
      required String? backdropPath,
      required String? posterPath,
      required String? releaseDate}) = _$MovieEntity;

  factory MovieEntity.fromJson(Map<String, dynamic> json) =
      _$MovieEntity.fromJson;

  @override
  int get id;
  String get title;
  @override
  String? get backdropPath;
  @override
  String? get posterPath;
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $TvShowEntityCopyWith(
          TvShowEntity value, $Res Function(TvShowEntity) then) =
      _$TvShowEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String? backdropPath,
      String? posterPath,
      String? firstAirDate});
}

/// @nodoc
class _$TvShowEntityCopyWithImpl<$Res> extends _$EntityCopyWithImpl<$Res>
    implements $TvShowEntityCopyWith<$Res> {
  _$TvShowEntityCopyWithImpl(
      TvShowEntity _value, $Res Function(TvShowEntity) _then)
      : super(_value, (v) => _then(v as TvShowEntity));

  @override
  TvShowEntity get _value => super._value as TvShowEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? firstAirDate = freezed,
  }) {
    return _then(TvShowEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@FreezedUnionValue('tv')
@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvShowEntity implements TvShowEntity {
  const _$TvShowEntity(
      {required this.id,
      required this.name,
      required this.backdropPath,
      required this.posterPath,
      required this.firstAirDate});

  factory _$TvShowEntity.fromJson(Map<String, dynamic> json) =>
      _$$TvShowEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? backdropPath;
  @override
  final String? posterPath;
  @override
  final String? firstAirDate;

  @override
  String toString() {
    return 'Entity.tvShow(id: $id, name: $name, backdropPath: $backdropPath, posterPath: $posterPath, firstAirDate: $firstAirDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TvShowEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, backdropPath, posterPath, firstAirDate);

  @JsonKey(ignore: true)
  @override
  $TvShowEntityCopyWith<TvShowEntity> get copyWith =>
      _$TvShowEntityCopyWithImpl<TvShowEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
  }) {
    return tvShow(id, name, backdropPath, posterPath, firstAirDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
  }) {
    return tvShow?.call(id, name, backdropPath, posterPath, firstAirDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(id, name, backdropPath, posterPath, firstAirDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieEntity value) movie,
    required TResult Function(TvShowEntity value) tvShow,
  }) {
    return tvShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
  }) {
    return tvShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowEntityToJson(this)..['media_type'] = 'tv';
  }
}

abstract class TvShowEntity implements Entity {
  const factory TvShowEntity(
      {required int id,
      required String name,
      required String? backdropPath,
      required String? posterPath,
      required String? firstAirDate}) = _$TvShowEntity;

  factory TvShowEntity.fromJson(Map<String, dynamic> json) =
      _$TvShowEntity.fromJson;

  @override
  int get id;
  String get name;
  @override
  String? get backdropPath;
  @override
  String? get posterPath;
  String? get firstAirDate;
  @override
  @JsonKey(ignore: true)
  $TvShowEntityCopyWith<TvShowEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
