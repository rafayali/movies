// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movies_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$SearchParamsCopyWithImpl<$Res, SearchParams>;
  @useResult
  $Res call({String query, bool reset});
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res, $Val extends SearchParams>
    implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? reset = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchParamsCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$$_SearchParamsCopyWith(
          _$_SearchParams value, $Res Function(_$_SearchParams) then) =
      __$$_SearchParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, bool reset});
}

/// @nodoc
class __$$_SearchParamsCopyWithImpl<$Res>
    extends _$SearchParamsCopyWithImpl<$Res, _$_SearchParams>
    implements _$$_SearchParamsCopyWith<$Res> {
  __$$_SearchParamsCopyWithImpl(
      _$_SearchParams _value, $Res Function(_$_SearchParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? reset = null,
  }) {
    return _then(_$_SearchParams(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      reset: null == reset
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
            other is _$_SearchParams &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchParamsCopyWith<_$_SearchParams> get copyWith =>
      __$$_SearchParamsCopyWithImpl<_$_SearchParams>(this, _$identity);
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams(
      {required final String query,
      required final bool reset}) = _$_SearchParams;

  @override
  String get query;
  @override
  bool get reset;
  @override
  @JsonKey(ignore: true)
  _$$_SearchParamsCopyWith<_$_SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call({int page, List<SearchItem> results});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$_SearchResultCopyWith(
          _$_SearchResult value, $Res Function(_$_SearchResult) then) =
      __$$_SearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<SearchItem> results});
}

/// @nodoc
class __$$_SearchResultCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$_SearchResult>
    implements _$$_SearchResultCopyWith<$Res> {
  __$$_SearchResultCopyWithImpl(
      _$_SearchResult _value, $Res Function(_$_SearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$_SearchResult(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$_SearchResult implements _SearchResult {
  _$_SearchResult({required this.page, required final List<SearchItem> results})
      : _results = results;

  @override
  final int page;
  final List<SearchItem> _results;
  @override
  List<SearchItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchResult(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResult &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      __$$_SearchResultCopyWithImpl<_$_SearchResult>(this, _$identity);
}

abstract class _SearchResult implements SearchResult {
  factory _SearchResult(
      {required final int page,
      required final List<SearchItem> results}) = _$_SearchResult;

  @override
  int get page;
  @override
  List<SearchItem> get results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult? Function(int id, String name, String? profilePicture)? person,
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
    TResult? Function(MovieSearchItem value)? movie,
    TResult? Function(TvShowSearchItem value)? tvShow,
    TResult? Function(PersonSearchItem value)? person,
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
      _$SearchItemCopyWithImpl<$Res, SearchItem>;
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res, $Val extends SearchItem>
    implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieSearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$MovieSearchItemCopyWith(
          _$MovieSearchItem value, $Res Function(_$MovieSearchItem) then) =
      __$$MovieSearchItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime? date,
      String? poster,
      String? backdrop,
      int id,
      String? backdropThumb});
}

/// @nodoc
class __$$MovieSearchItemCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$MovieSearchItem>
    implements _$$MovieSearchItemCopyWith<$Res> {
  __$$MovieSearchItemCopyWithImpl(
      _$MovieSearchItem _value, $Res Function(_$MovieSearchItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = freezed,
    Object? poster = freezed,
    Object? backdrop = freezed,
    Object? id = null,
    Object? backdropThumb = freezed,
  }) {
    return _then(_$MovieSearchItem(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop: freezed == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropThumb: freezed == backdropThumb
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
            other is _$MovieSearchItem &&
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
  @pragma('vm:prefer-inline')
  _$$MovieSearchItemCopyWith<_$MovieSearchItem> get copyWith =>
      __$$MovieSearchItemCopyWithImpl<_$MovieSearchItem>(this, _$identity);

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
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult? Function(int id, String name, String? profilePicture)? person,
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
    TResult? Function(MovieSearchItem value)? movie,
    TResult? Function(TvShowSearchItem value)? tvShow,
    TResult? Function(PersonSearchItem value)? person,
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
      {required final String name,
      required final DateTime? date,
      required final String? poster,
      required final String? backdrop,
      required final int id,
      required final String? backdropThumb}) = _$MovieSearchItem;

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
  _$$MovieSearchItemCopyWith<_$MovieSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvShowSearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$TvShowSearchItemCopyWith(
          _$TvShowSearchItem value, $Res Function(_$TvShowSearchItem) then) =
      __$$TvShowSearchItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime? date,
      String? poster,
      String? backdrop,
      int id,
      String? backdropThumb});
}

/// @nodoc
class __$$TvShowSearchItemCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$TvShowSearchItem>
    implements _$$TvShowSearchItemCopyWith<$Res> {
  __$$TvShowSearchItemCopyWithImpl(
      _$TvShowSearchItem _value, $Res Function(_$TvShowSearchItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = freezed,
    Object? poster = freezed,
    Object? backdrop = freezed,
    Object? id = null,
    Object? backdropThumb = freezed,
  }) {
    return _then(_$TvShowSearchItem(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop: freezed == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropThumb: freezed == backdropThumb
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
            other is _$TvShowSearchItem &&
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
  @pragma('vm:prefer-inline')
  _$$TvShowSearchItemCopyWith<_$TvShowSearchItem> get copyWith =>
      __$$TvShowSearchItemCopyWithImpl<_$TvShowSearchItem>(this, _$identity);

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
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult? Function(int id, String name, String? profilePicture)? person,
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
    TResult? Function(MovieSearchItem value)? movie,
    TResult? Function(TvShowSearchItem value)? tvShow,
    TResult? Function(PersonSearchItem value)? person,
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
      {required final String name,
      required final DateTime? date,
      required final String? poster,
      required final String? backdrop,
      required final int id,
      required final String? backdropThumb}) = _$TvShowSearchItem;

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
  _$$TvShowSearchItemCopyWith<_$TvShowSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonSearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$PersonSearchItemCopyWith(
          _$PersonSearchItem value, $Res Function(_$PersonSearchItem) then) =
      __$$PersonSearchItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? profilePicture});
}

/// @nodoc
class __$$PersonSearchItemCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$PersonSearchItem>
    implements _$$PersonSearchItemCopyWith<$Res> {
  __$$PersonSearchItemCopyWithImpl(
      _$PersonSearchItem _value, $Res Function(_$PersonSearchItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_$PersonSearchItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
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
            other is _$PersonSearchItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonSearchItemCopyWith<_$PersonSearchItem> get copyWith =>
      __$$PersonSearchItemCopyWithImpl<_$PersonSearchItem>(this, _$identity);

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
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        movie,
    TResult? Function(String name, DateTime? date, String? poster,
            String? backdrop, int id, String? backdropThumb)?
        tvShow,
    TResult? Function(int id, String name, String? profilePicture)? person,
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
    TResult? Function(MovieSearchItem value)? movie,
    TResult? Function(TvShowSearchItem value)? tvShow,
    TResult? Function(PersonSearchItem value)? person,
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
      {required final int id,
      required final String name,
      required final String? profilePicture}) = _$PersonSearchItem;

  @override
  int get id;
  @override
  String get name;
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$PersonSearchItemCopyWith<_$PersonSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}
