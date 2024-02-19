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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$SearchParamsImplCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$$SearchParamsImplCopyWith(
          _$SearchParamsImpl value, $Res Function(_$SearchParamsImpl) then) =
      __$$SearchParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, bool reset});
}

/// @nodoc
class __$$SearchParamsImplCopyWithImpl<$Res>
    extends _$SearchParamsCopyWithImpl<$Res, _$SearchParamsImpl>
    implements _$$SearchParamsImplCopyWith<$Res> {
  __$$SearchParamsImplCopyWithImpl(
      _$SearchParamsImpl _value, $Res Function(_$SearchParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? reset = null,
  }) {
    return _then(_$SearchParamsImpl(
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

class _$SearchParamsImpl implements _SearchParams {
  const _$SearchParamsImpl({required this.query, required this.reset});

  @override
  final String query;
  @override
  final bool reset;

  @override
  String toString() {
    return 'SearchParams(query: $query, reset: $reset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParamsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParamsImplCopyWith<_$SearchParamsImpl> get copyWith =>
      __$$SearchParamsImplCopyWithImpl<_$SearchParamsImpl>(this, _$identity);
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams(
      {required final String query,
      required final bool reset}) = _$SearchParamsImpl;

  @override
  String get query;
  @override
  bool get reset;
  @override
  @JsonKey(ignore: true)
  _$$SearchParamsImplCopyWith<_$SearchParamsImpl> get copyWith =>
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
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<SearchItem> results});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$SearchResultImpl(
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

class _$SearchResultImpl implements _SearchResult {
  _$SearchResultImpl(
      {required this.page, required final List<SearchItem> results})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);
}

abstract class _SearchResult implements SearchResult {
  factory _SearchResult(
      {required final int page,
      required final List<SearchItem> results}) = _$SearchResultImpl;

  @override
  int get page;
  @override
  List<SearchItem> get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
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
abstract class _$$MovieSearchItemImplCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$MovieSearchItemImplCopyWith(_$MovieSearchItemImpl value,
          $Res Function(_$MovieSearchItemImpl) then) =
      __$$MovieSearchItemImplCopyWithImpl<$Res>;
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
class __$$MovieSearchItemImplCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$MovieSearchItemImpl>
    implements _$$MovieSearchItemImplCopyWith<$Res> {
  __$$MovieSearchItemImplCopyWithImpl(
      _$MovieSearchItemImpl _value, $Res Function(_$MovieSearchItemImpl) _then)
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
    return _then(_$MovieSearchItemImpl(
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

class _$MovieSearchItemImpl implements MovieSearchItem {
  const _$MovieSearchItemImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieSearchItemImpl &&
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
  _$$MovieSearchItemImplCopyWith<_$MovieSearchItemImpl> get copyWith =>
      __$$MovieSearchItemImplCopyWithImpl<_$MovieSearchItemImpl>(
          this, _$identity);

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
      required final String? backdropThumb}) = _$MovieSearchItemImpl;

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
  _$$MovieSearchItemImplCopyWith<_$MovieSearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvShowSearchItemImplCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$TvShowSearchItemImplCopyWith(_$TvShowSearchItemImpl value,
          $Res Function(_$TvShowSearchItemImpl) then) =
      __$$TvShowSearchItemImplCopyWithImpl<$Res>;
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
class __$$TvShowSearchItemImplCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$TvShowSearchItemImpl>
    implements _$$TvShowSearchItemImplCopyWith<$Res> {
  __$$TvShowSearchItemImplCopyWithImpl(_$TvShowSearchItemImpl _value,
      $Res Function(_$TvShowSearchItemImpl) _then)
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
    return _then(_$TvShowSearchItemImpl(
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

class _$TvShowSearchItemImpl implements TvShowSearchItem {
  const _$TvShowSearchItemImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowSearchItemImpl &&
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
  _$$TvShowSearchItemImplCopyWith<_$TvShowSearchItemImpl> get copyWith =>
      __$$TvShowSearchItemImplCopyWithImpl<_$TvShowSearchItemImpl>(
          this, _$identity);

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
      required final String? backdropThumb}) = _$TvShowSearchItemImpl;

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
  _$$TvShowSearchItemImplCopyWith<_$TvShowSearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonSearchItemImplCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$PersonSearchItemImplCopyWith(_$PersonSearchItemImpl value,
          $Res Function(_$PersonSearchItemImpl) then) =
      __$$PersonSearchItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? profilePicture});
}

/// @nodoc
class __$$PersonSearchItemImplCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$PersonSearchItemImpl>
    implements _$$PersonSearchItemImplCopyWith<$Res> {
  __$$PersonSearchItemImplCopyWithImpl(_$PersonSearchItemImpl _value,
      $Res Function(_$PersonSearchItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_$PersonSearchItemImpl(
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

class _$PersonSearchItemImpl implements PersonSearchItem {
  const _$PersonSearchItemImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonSearchItemImpl &&
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
  _$$PersonSearchItemImplCopyWith<_$PersonSearchItemImpl> get copyWith =>
      __$$PersonSearchItemImplCopyWithImpl<_$PersonSearchItemImpl>(
          this, _$identity);

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
      required final String? profilePicture}) = _$PersonSearchItemImpl;

  @override
  int get id;
  @override
  String get name;
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$PersonSearchItemImplCopyWith<_$PersonSearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
