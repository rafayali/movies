// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiSearch _$MultiSearchFromJson(Map<String, dynamic> json) {
  return _MultiSearch.fromJson(json);
}

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
      _$MultiSearchCopyWithImpl<$Res, MultiSearch>;
  @useResult
  $Res call({int page, List<Entity> results, int totalPages, int totalResults});
}

/// @nodoc
class _$MultiSearchCopyWithImpl<$Res, $Val extends MultiSearch>
    implements $MultiSearchCopyWith<$Res> {
  _$MultiSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Entity>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiSearchCopyWith<$Res>
    implements $MultiSearchCopyWith<$Res> {
  factory _$$_MultiSearchCopyWith(
          _$_MultiSearch value, $Res Function(_$_MultiSearch) then) =
      __$$_MultiSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<Entity> results, int totalPages, int totalResults});
}

/// @nodoc
class __$$_MultiSearchCopyWithImpl<$Res>
    extends _$MultiSearchCopyWithImpl<$Res, _$_MultiSearch>
    implements _$$_MultiSearchCopyWith<$Res> {
  __$$_MultiSearchCopyWithImpl(
      _$_MultiSearch _value, $Res Function(_$_MultiSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_MultiSearch(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Entity>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
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
      required final List<Entity> results,
      required this.totalPages,
      required this.totalResults})
      : _results = results;

  factory _$_MultiSearch.fromJson(Map<String, dynamic> json) =>
      _$$_MultiSearchFromJson(json);

  @override
  final int page;
  final List<Entity> _results;
  @override
  List<Entity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

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
            other is _$_MultiSearch &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiSearchCopyWith<_$_MultiSearch> get copyWith =>
      __$$_MultiSearchCopyWithImpl<_$_MultiSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiSearchToJson(
      this,
    );
  }
}

abstract class _MultiSearch implements MultiSearch {
  factory _MultiSearch(
      {required final int page,
      required final List<Entity> results,
      required final int totalPages,
      required final int totalResults}) = _$_MultiSearch;

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
  _$$_MultiSearchCopyWith<_$_MultiSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

Entity _$EntityFromJson(Map<String, dynamic> json) {
  switch (json['media_type']) {
    case 'movie':
      return MovieEntity.fromJson(json);
    case 'tv':
      return TvShowEntity.fromJson(json);
    case 'person':
      return PersonEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'media_type', 'Entity',
          'Invalid union type "${json['media_type']}"!');
  }
}

/// @nodoc
mixin _$Entity {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
    required TResult Function(int id, String name, String? profilePath) person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult? Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    TResult? Function(int id, String name, String? profilePath)? person,
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
    TResult Function(int id, String name, String? profilePath)? person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieEntity value) movie,
    required TResult Function(TvShowEntity value) tvShow,
    required TResult Function(PersonEntity value) person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieEntity value)? movie,
    TResult? Function(TvShowEntity value)? tvShow,
    TResult? Function(PersonEntity value)? person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    TResult Function(PersonEntity value)? person,
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
      _$EntityCopyWithImpl<$Res, Entity>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$EntityCopyWithImpl<$Res, $Val extends Entity>
    implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory _$$MovieEntityCopyWith(
          _$MovieEntity value, $Res Function(_$MovieEntity) then) =
      __$$MovieEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? backdropPath,
      String? posterPath,
      String? releaseDate});
}

/// @nodoc
class __$$MovieEntityCopyWithImpl<$Res>
    extends _$EntityCopyWithImpl<$Res, _$MovieEntity>
    implements _$$MovieEntityCopyWith<$Res> {
  __$$MovieEntityCopyWithImpl(
      _$MovieEntity _value, $Res Function(_$MovieEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$MovieEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieEntity implements MovieEntity {
  const _$MovieEntity(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.posterPath,
      required this.releaseDate,
      final String? $type})
      : $type = $type ?? 'movie';

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

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'Entity.movie(id: $id, title: $title, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, backdropPath, posterPath, releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieEntityCopyWith<_$MovieEntity> get copyWith =>
      __$$MovieEntityCopyWithImpl<_$MovieEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
    required TResult Function(int id, String name, String? profilePath) person,
  }) {
    return movie(id, title, backdropPath, posterPath, releaseDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult? Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    TResult? Function(int id, String name, String? profilePath)? person,
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
    TResult Function(int id, String name, String? profilePath)? person,
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
    required TResult Function(PersonEntity value) person,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieEntity value)? movie,
    TResult? Function(TvShowEntity value)? tvShow,
    TResult? Function(PersonEntity value)? person,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    TResult Function(PersonEntity value)? person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieEntityToJson(
      this,
    );
  }
}

abstract class MovieEntity implements Entity {
  const factory MovieEntity(
      {required final int id,
      required final String title,
      required final String? backdropPath,
      required final String? posterPath,
      required final String? releaseDate}) = _$MovieEntity;

  factory MovieEntity.fromJson(Map<String, dynamic> json) =
      _$MovieEntity.fromJson;

  @override
  int get id;
  String get title;
  String? get backdropPath;
  String? get posterPath;
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$MovieEntityCopyWith<_$MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvShowEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory _$$TvShowEntityCopyWith(
          _$TvShowEntity value, $Res Function(_$TvShowEntity) then) =
      __$$TvShowEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? backdropPath,
      String? posterPath,
      String? firstAirDate});
}

/// @nodoc
class __$$TvShowEntityCopyWithImpl<$Res>
    extends _$EntityCopyWithImpl<$Res, _$TvShowEntity>
    implements _$$TvShowEntityCopyWith<$Res> {
  __$$TvShowEntityCopyWithImpl(
      _$TvShowEntity _value, $Res Function(_$TvShowEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? firstAirDate = freezed,
  }) {
    return _then(_$TvShowEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvShowEntity implements TvShowEntity {
  const _$TvShowEntity(
      {required this.id,
      required this.name,
      required this.backdropPath,
      required this.posterPath,
      required this.firstAirDate,
      final String? $type})
      : $type = $type ?? 'tv';

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

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'Entity.tvShow(id: $id, name: $name, backdropPath: $backdropPath, posterPath: $posterPath, firstAirDate: $firstAirDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, backdropPath, posterPath, firstAirDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowEntityCopyWith<_$TvShowEntity> get copyWith =>
      __$$TvShowEntityCopyWithImpl<_$TvShowEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
    required TResult Function(int id, String name, String? profilePath) person,
  }) {
    return tvShow(id, name, backdropPath, posterPath, firstAirDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult? Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    TResult? Function(int id, String name, String? profilePath)? person,
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
    TResult Function(int id, String name, String? profilePath)? person,
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
    required TResult Function(PersonEntity value) person,
  }) {
    return tvShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieEntity value)? movie,
    TResult? Function(TvShowEntity value)? tvShow,
    TResult? Function(PersonEntity value)? person,
  }) {
    return tvShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    TResult Function(PersonEntity value)? person,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowEntityToJson(
      this,
    );
  }
}

abstract class TvShowEntity implements Entity {
  const factory TvShowEntity(
      {required final int id,
      required final String name,
      required final String? backdropPath,
      required final String? posterPath,
      required final String? firstAirDate}) = _$TvShowEntity;

  factory TvShowEntity.fromJson(Map<String, dynamic> json) =
      _$TvShowEntity.fromJson;

  @override
  int get id;
  String get name;
  String? get backdropPath;
  String? get posterPath;
  String? get firstAirDate;
  @override
  @JsonKey(ignore: true)
  _$$TvShowEntityCopyWith<_$TvShowEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonEntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory _$$PersonEntityCopyWith(
          _$PersonEntity value, $Res Function(_$PersonEntity) then) =
      __$$PersonEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? profilePath});
}

/// @nodoc
class __$$PersonEntityCopyWithImpl<$Res>
    extends _$EntityCopyWithImpl<$Res, _$PersonEntity>
    implements _$$PersonEntityCopyWith<$Res> {
  __$$PersonEntityCopyWithImpl(
      _$PersonEntity _value, $Res Function(_$PersonEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePath = freezed,
  }) {
    return _then(_$PersonEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PersonEntity implements PersonEntity {
  const _$PersonEntity(
      {required this.id,
      required this.name,
      required this.profilePath,
      final String? $type})
      : $type = $type ?? 'person';

  factory _$PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$$PersonEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? profilePath;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'Entity.person(id: $id, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonEntityCopyWith<_$PersonEntity> get copyWith =>
      __$$PersonEntityCopyWithImpl<_$PersonEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)
        movie,
    required TResult Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)
        tvShow,
    required TResult Function(int id, String name, String? profilePath) person,
  }) {
    return person(id, name, profilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String? backdropPath,
            String? posterPath, String? releaseDate)?
        movie,
    TResult? Function(int id, String name, String? backdropPath,
            String? posterPath, String? firstAirDate)?
        tvShow,
    TResult? Function(int id, String name, String? profilePath)? person,
  }) {
    return person?.call(id, name, profilePath);
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
    TResult Function(int id, String name, String? profilePath)? person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(id, name, profilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieEntity value) movie,
    required TResult Function(TvShowEntity value) tvShow,
    required TResult Function(PersonEntity value) person,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieEntity value)? movie,
    TResult? Function(TvShowEntity value)? tvShow,
    TResult? Function(PersonEntity value)? person,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieEntity value)? movie,
    TResult Function(TvShowEntity value)? tvShow,
    TResult Function(PersonEntity value)? person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonEntityToJson(
      this,
    );
  }
}

abstract class PersonEntity implements Entity {
  const factory PersonEntity(
      {required final int id,
      required final String name,
      required final String? profilePath}) = _$PersonEntity;

  factory PersonEntity.fromJson(Map<String, dynamic> json) =
      _$PersonEntity.fromJson;

  @override
  int get id;
  String get name;
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$PersonEntityCopyWith<_$PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
