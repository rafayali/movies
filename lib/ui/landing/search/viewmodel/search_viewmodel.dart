import 'package:movies_flutter/core/viewmodel.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';
import 'package:movies_flutter/ui/landing/search/models/search_models.dart';

class SearchViewModel extends ViewModel<SearchUiState> {
  SearchViewModel({
    required this.searchMovieUsecase,
  }) : super(const SearchUiState.searchForMovies());

  final MultiSearchUsecase searchMovieUsecase;

  String _query = '';

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
      state.maybeWhen(
        orElse: () {
          if (searchItems.isEmpty) {
            setState(const SearchUiState.noResults());
          }
          setState(SearchUiState.success(searchItems));
        },
        success: (items) {
          setState(SearchUiState.success(searchItems.toList()));
        },
      );
    } else {
      if (state is! SuccessSearchUiState) {
        setState(const SearchUiState.noResults());
      }
    }
  }

  void loadMore() {
    search(_query);
  }
}
