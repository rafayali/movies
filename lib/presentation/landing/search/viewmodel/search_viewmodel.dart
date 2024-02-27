import 'package:movies_flutter/core/viewmodel.dart';
import 'package:movies_flutter/domain/search/entities/search_movies_entities.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';
import 'package:movies_flutter/presentation/landing/search/models/search_models.dart';
import 'package:movies_flutter/utils/constants.dart';

class SearchViewModel extends ViewModel<SearchUiState> {
  SearchViewModel({
    required this.searchMovieUsecase,
  }) : super(const SearchUiState.searchForMovies());

  final MultiSearchUsecase searchMovieUsecase;

  String _query = emptyString;

  Future<void> search(String query) async {
    if (query.isEmpty) {
      _query = query;
      setState(const SearchUiState.searchForMovies());
      return;
    }

    if (_query != query) {
      setState(const SearchUiState.loading());
      _query = query;
    }

    _query = query;

    final result = await searchMovieUsecase.invoke(query);

    if (result.isValue) {
      final searchItems = result.asValue!.value.results;
      if (state is SuccessSearchUiState) {
        setState(SearchUiState.success(
          searchItems.where((e) => e is! PersonSearchItem).toList(),
        ));
      } else {
        if (searchItems.isEmpty) {
          setState(const SearchUiState.noResults());
        } else {
          setState(SearchUiState.success(searchItems));
        }
      }
    } else {
      if (state is LoadingSearchUiState) {
        setState(const SearchUiState.noResults());
      }
    }
  }

  void loadMore() {
    search(_query);
  }

  void clear() {
    search(emptyString);
  }
}
