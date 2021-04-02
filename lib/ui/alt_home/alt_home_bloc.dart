import 'package:movies_flutter/api/tmdb_api.dart';
import 'package:movies_flutter/ui/home/models/movie_item.dart';
import 'package:rxdart/rxdart.dart';
import 'package:async/async.dart' as async;

import '../state.dart';

class AltHomeBloc {
  final TmdbApi _tmdbApi;

  final _newState = PublishSubject<UiState<List<MovieItemUiModel>>>();
  Stream<UiState<List<MovieItemUiModel>>> get newState => _newState;

  AltHomeBloc({required TmdbApi tmdbApi}) : _tmdbApi = tmdbApi {
    _load();
  }

  void retry() {
    _newState.add(Loading());
    _load();
  }

  void _load() async {
    final _moviesResult = await async.Result.capture(_tmdbApi.discoverMovies());

    if (_moviesResult.isError) {
      _newState.add(Error('Error loading data list'));
      return;
    }

    _newState.add(
      Success(_moviesResult.asValue!.value.results
          .map((e) => e.toMovieItem())
          .toList()),
    );
  }
}
