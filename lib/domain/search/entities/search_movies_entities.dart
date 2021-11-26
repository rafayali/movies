import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_movies_entities.freezed.dart';

@freezed
class SearchParams with _$SearchParams {
  const factory SearchParams({required String query, required bool reset}) =
      _SearchParams;
}

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult({
    required int page,
    required List<SearchItem> results,
  }) = _SearchResult;
}

@freezed
class SearchItem with _$SearchItem {
  const factory SearchItem.movie({
    required String name,
    required DateTime? date,
    required String? poster,
    required String? backdrop,
    required int id,
    required String? backdropThumb,
  }) = MovieSearchItem;
  const factory SearchItem.tvShow({
    required String name,
    required DateTime? date,
    required String? poster,
    required String? backdrop,
    required int id,
    required String? backdropThumb,
  }) = TvShowSearchItem;
  const factory SearchItem.person({
    required int id,
    required String name,
    required String? profilePicture,
  }) = PersonSearchItem;
}
