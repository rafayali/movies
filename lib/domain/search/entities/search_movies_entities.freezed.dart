// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_movies_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchParamsTearOff {
  const _$SearchParamsTearOff();

  _SearchParams call({required String query, required bool reset}) {
    return _SearchParams(
      query: query,
      reset: reset,
    );
  }
}

/// @nodoc
const $SearchParams = _$SearchParamsTearOff();

/// @nodoc
mixin _$SearchParams {
  String get query => throw _privateConstructorUsedError;
  bool get reset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchParamsCopyWith<SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamsCopyWith<$Res> {
  factory $SearchParamsCopyWith(
          SearchParams value, $Res Function(SearchParams) then) =
      _$SearchParamsCopyWithImpl<$Res>;
  $Res call({String query, bool reset});
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res> implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  final SearchParams _value;
  // ignore: unused_field
  final $Res Function(SearchParams) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? reset = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      reset: reset == freezed
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchParamsCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$SearchParamsCopyWith(
          _SearchParams value, $Res Function(_SearchParams) then) =
      __$SearchParamsCopyWithImpl<$Res>;
  @override
  $Res call({String query, bool reset});
}

/// @nodoc
class __$SearchParamsCopyWithImpl<$Res> extends _$SearchParamsCopyWithImpl<$Res>
    implements _$SearchParamsCopyWith<$Res> {
  __$SearchParamsCopyWithImpl(
      _SearchParams _value, $Res Function(_SearchParams) _then)
      : super(_value, (v) => _then(v as _SearchParams));

  @override
  _SearchParams get _value => super._value as _SearchParams;

  @override
  $Res call({
    Object? query = freezed,
    Object? reset = freezed,
  }) {
    return _then(_SearchParams(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      reset: reset == freezed
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchParams implements _SearchParams {
  const _$_SearchParams({required this.query, required this.reset});

  @override
  final String query;
  @override
  final bool reset;

  @override
  String toString() {
    return 'SearchParams(query: $query, reset: $reset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchParams &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, reset);

  @JsonKey(ignore: true)
  @override
  _$SearchParamsCopyWith<_SearchParams> get copyWith =>
      __$SearchParamsCopyWithImpl<_SearchParams>(this, _$identity);
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams({required String query, required bool reset}) =
      _$_SearchParams;

  @override
  String get query;
  @override
  bool get reset;
  @override
  @JsonKey(ignore: true)
  _$SearchParamsCopyWith<_SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchResultTearOff {
  const _$SearchResultTearOff();

  _SearchResult call({required int page, required List<SearchItem> results}) {
    return _SearchResult(
      page: page,
      results: results,
    );
  }
}

/// @nodoc
const $SearchResult = _$SearchResultTearOff();

/// @nodoc
mixin _$SearchResult {
  int get page => throw _privateConstructorUsedError;
  List<SearchItem> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res>;
  $Res call({int page, List<SearchItem> results});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res> implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  final SearchResult _value;
  // ignore: unused_field
  final $Res Function(SearchResult) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$SearchResultCopyWith(
          _SearchResult value, $Res Function(_SearchResult) then) =
      __$SearchResultCopyWithImpl<$Res>;
  @override
  $Res call({int page, List<SearchItem> results});
}

/// @nodoc
class __$SearchResultCopyWithImpl<$Res> extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCopyWith<$Res> {
  __$SearchResultCopyWithImpl(
      _SearchResult _value, $Res Function(_SearchResult) _then)
      : super(_value, (v) => _then(v as _SearchResult));

  @override
  _SearchResult get _value => super._value as _SearchResult;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_SearchResult(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$_SearchResult implements _SearchResult {
  _$_SearchResult({required this.page, required this.results});

  @override
  final int page;
  @override
  final List<SearchItem> results;

  @override
  String toString() {
    return 'SearchResult(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResult &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$SearchResultCopyWith<_SearchResult> get copyWith =>
      __$SearchResultCopyWithImpl<_SearchResult>(this, _$identity);
}

abstract class _SearchResult implements SearchResult {
  factory _SearchResult(
      {required int page, required List<SearchItem> results}) = _$_SearchResult;

  @override
  int get page;
  @override
  List<SearchItem> get results;
  @override
  @JsonKey(ignore: true)
  _$SearchResultCopyWith<_SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchItemTearOff {
  const _$SearchItemTearOff();

  MovieSearchItem movie(
      {required String name,
      required DateTime? date,
      required String? poster,
      required String? backdrop,
      required int id,
      required String? backdropThumb}) {
    return MovieSearchItem(
      name: name,
      date: date,
      poster: poster,
      backdrop: backdrop,
      id: id,
      backdropThumb: backdropThumb,
    );
  }

  TvShowSearchItem tvShow(
      {required String name,
      required DateTime? date,
      required String? poster,
      required String? backdrop,
      required int id,
      required String? backdropThumb}) {
    return TvShowSearchItem(
      name: name,
      date: date,
      poster: poster,
      backdrop: backdrop,
      id: id,
      backdropThumb: backdropThumb,
    );
  }

  PersonSearchItem person(
      {required int id,
      required String name,
      required String? profilePicture}) {
    return PersonSearchItem(
      id: id,
      name: name,
      profilePicture: profilePicture,
    );
  }
}

/// @nodoc
const $SearchItem = _$SearchItemTearOff();

/// @nodoc
mixin _$SearchItem {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        movie,
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        tvShow,
    required TResult Function(int id, String name, String? profilePicture)
        person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieSearchItem value) movie,
    required TResult Function(TvShowSearchItem value) tvShow,
    required TResult Function(PersonSearchItem value) person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchItemCopyWith<SearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res>;
  $Res call({String name, int id});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res> implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  final SearchItem _value;
  // ignore: unused_field
  final $Res Function(SearchItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $MovieSearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory $MovieSearchItemCopyWith(
          MovieSearchItem value, $Res Function(MovieSearchItem) then) =
      _$MovieSearchItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      DateTime? date,
      String? poster,
      String? backdrop,
      int id,
      String? backdropThumb});
}

/// @nodoc
class _$MovieSearchItemCopyWithImpl<$Res> extends _$SearchItemCopyWithImpl<$Res>
    implements $MovieSearchItemCopyWith<$Res> {
  _$MovieSearchItemCopyWithImpl(
      MovieSearchItem _value, $Res Function(MovieSearchItem) _then)
      : super(_value, (v) => _then(v as MovieSearchItem));

  @override
  MovieSearchItem get _value => super._value as MovieSearchItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? poster = freezed,
    Object? backdrop = freezed,
    Object? id = freezed,
    Object? backdropThumb = freezed,
  }) {
    return _then(MovieSearchItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop: backdrop == freezed
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropThumb: backdropThumb == freezed
          ? _value.backdropThumb
          : backdropThumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MovieSearchItem implements MovieSearchItem {
  const _$MovieSearchItem(
      {required this.name,
      required this.date,
      required this.poster,
      required this.backdrop,
      required this.id,
      required this.backdropThumb});

  @override
  final String name;
  @override
  final DateTime? date;
  @override
  final String? poster;
  @override
  final String? backdrop;
  @override
  final int id;
  @override
  final String? backdropThumb;

  @override
  String toString() {
    return 'SearchItem.movie(name: $name, date: $date, poster: $poster, backdrop: $backdrop, id: $id, backdropThumb: $backdropThumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieSearchItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.backdropThumb, backdropThumb) ||
                other.backdropThumb == backdropThumb));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, date, poster, backdrop, id, backdropThumb);

  @JsonKey(ignore: true)
  @override
  $MovieSearchItemCopyWith<MovieSearchItem> get copyWith =>
      _$MovieSearchItemCopyWithImpl<MovieSearchItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        movie,
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        tvShow,
    required TResult Function(int id, String name, String? profilePicture)
        person,
  }) {
    return movie(name, date, poster, backdrop, id, backdropThumb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
  }) {
    return movie?.call(name, date, poster, backdrop, id, backdropThumb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(name, date, poster, backdrop, id, backdropThumb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieSearchItem value) movie,
    required TResult Function(TvShowSearchItem value) tvShow,
    required TResult Function(PersonSearchItem value) person,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }
}

abstract class MovieSearchItem implements SearchItem {
  const factory MovieSearchItem(
      {required String name,
      required DateTime? date,
      required String? poster,
      required String? backdrop,
      required int id,
      required String? backdropThumb}) = _$MovieSearchItem;

  @override
  String get name;
  DateTime? get date;
  String? get poster;
  String? get backdrop;
  @override
  int get id;
  String? get backdropThumb;
  @override
  @JsonKey(ignore: true)
  $MovieSearchItemCopyWith<MovieSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowSearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory $TvShowSearchItemCopyWith(
          TvShowSearchItem value, $Res Function(TvShowSearchItem) then) =
      _$TvShowSearchItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      DateTime? date,
      String? poster,
      String? backdrop,
      int id,
      String? backdropThumb});
}

/// @nodoc
class _$TvShowSearchItemCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res>
    implements $TvShowSearchItemCopyWith<$Res> {
  _$TvShowSearchItemCopyWithImpl(
      TvShowSearchItem _value, $Res Function(TvShowSearchItem) _then)
      : super(_value, (v) => _then(v as TvShowSearchItem));

  @override
  TvShowSearchItem get _value => super._value as TvShowSearchItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? poster = freezed,
    Object? backdrop = freezed,
    Object? id = freezed,
    Object? backdropThumb = freezed,
  }) {
    return _then(TvShowSearchItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop: backdrop == freezed
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropThumb: backdropThumb == freezed
          ? _value.backdropThumb
          : backdropThumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TvShowSearchItem implements TvShowSearchItem {
  const _$TvShowSearchItem(
      {required this.name,
      required this.date,
      required this.poster,
      required this.backdrop,
      required this.id,
      required this.backdropThumb});

  @override
  final String name;
  @override
  final DateTime? date;
  @override
  final String? poster;
  @override
  final String? backdrop;
  @override
  final int id;
  @override
  final String? backdropThumb;

  @override
  String toString() {
    return 'SearchItem.tvShow(name: $name, date: $date, poster: $poster, backdrop: $backdrop, id: $id, backdropThumb: $backdropThumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TvShowSearchItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.backdropThumb, backdropThumb) ||
                other.backdropThumb == backdropThumb));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, date, poster, backdrop, id, backdropThumb);

  @JsonKey(ignore: true)
  @override
  $TvShowSearchItemCopyWith<TvShowSearchItem> get copyWith =>
      _$TvShowSearchItemCopyWithImpl<TvShowSearchItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        movie,
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        tvShow,
    required TResult Function(int id, String name, String? profilePicture)
        person,
  }) {
    return tvShow(name, date, poster, backdrop, id, backdropThumb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
  }) {
    return tvShow?.call(name, date, poster, backdrop, id, backdropThumb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(name, date, poster, backdrop, id, backdropThumb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieSearchItem value) movie,
    required TResult Function(TvShowSearchItem value) tvShow,
    required TResult Function(PersonSearchItem value) person,
  }) {
    return tvShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
  }) {
    return tvShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(this);
    }
    return orElse();
  }
}

abstract class TvShowSearchItem implements SearchItem {
  const factory TvShowSearchItem(
      {required String name,
      required DateTime? date,
      required String? poster,
      required String? backdrop,
      required int id,
      required String? backdropThumb}) = _$TvShowSearchItem;

  @override
  String get name;
  DateTime? get date;
  String? get poster;
  String? get backdrop;
  @override
  int get id;
  String? get backdropThumb;
  @override
  @JsonKey(ignore: true)
  $TvShowSearchItemCopyWith<TvShowSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonSearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory $PersonSearchItemCopyWith(
          PersonSearchItem value, $Res Function(PersonSearchItem) then) =
      _$PersonSearchItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String? profilePicture});
}

/// @nodoc
class _$PersonSearchItemCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res>
    implements $PersonSearchItemCopyWith<$Res> {
  _$PersonSearchItemCopyWithImpl(
      PersonSearchItem _value, $Res Function(PersonSearchItem) _then)
      : super(_value, (v) => _then(v as PersonSearchItem));

  @override
  PersonSearchItem get _value => super._value as PersonSearchItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(PersonSearchItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PersonSearchItem implements PersonSearchItem {
  const _$PersonSearchItem(
      {required this.id, required this.name, required this.profilePicture});

  @override
  final int id;
  @override
  final String name;
  @override
  final String? profilePicture;

  @override
  String toString() {
    return 'SearchItem.person(id: $id, name: $name, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonSearchItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, profilePicture);

  @JsonKey(ignore: true)
  @override
  $PersonSearchItemCopyWith<PersonSearchItem> get copyWith =>
      _$PersonSearchItemCopyWithImpl<PersonSearchItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        movie,
    required TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)
        tvShow,
    required TResult Function(int id, String name, String? profilePicture)
        person,
  }) {
    return person(id, name, profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
  }) {
    return person?.call(id, name, profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult Function(int id, String name, String? profilePicture)? person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(id, name, profilePicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieSearchItem value) movie,
    required TResult Function(TvShowSearchItem value) tvShow,
    required TResult Function(PersonSearchItem value) person,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieSearchItem value)? movie,
    TResult Function(TvShowSearchItem value)? tvShow,
    TResult Function(PersonSearchItem value)? person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class PersonSearchItem implements SearchItem {
  const factory PersonSearchItem(
      {required int id,
      required String name,
      required String? profilePicture}) = _$PersonSearchItem;

  @override
  int get id;
  @override
  String get name;
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  $PersonSearchItemCopyWith<PersonSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}
