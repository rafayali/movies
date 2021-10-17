import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_flutter/domain/search/entities/search_movies_entities.dart';

part 'search_models.freezed.dart';

@freezed
class SearchUiState with _$SearchUiState {
  const factory SearchUiState.loading() = LoadingSearchUiState;
  const factory SearchUiState.success(List<SearchItem> items) =
      SuccessSearchUiState;
  const factory SearchUiState.noResults() = NoResultsSearchUiState;
  const factory SearchUiState.searchForMovies() = WaitingForInputSearchUiState;
}
