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
    if (query.isEmpty) return;

    if (_query != query) {
      setState(const SearchUiState.loading());
      _query = query;
    }

    final result = await searchMovieUsecase.invoke(query);

    if (result.isValue) {
      final searchResult = result.asValue!.value.results;
      if (state is SuccessSearchUiState) {
        final currentState = state as SuccessSearchUiState;
        setState(
          SearchUiState.success([...currentState.items, ...searchResult]),
        );
        return;
      } else {
        if (searchResult.isEmpty) {
          setState(const SearchUiState.noResults());
          return;
        }

        setState(SearchUiState.success(searchResult));
      }
    } else {
      setState(const SearchUiState.noResults());
    }
  }

  void loadMore() {
    search(_query);
  }
}
