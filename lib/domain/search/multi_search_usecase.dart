import 'package:async/async.dart';
import 'package:chopper/chopper.dart';
import 'package:movies_flutter/core/usecase.dart';
import 'package:movies_flutter/data/remote/services/entities/mutli_search/multi_search.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:quiver/strings.dart';

import 'entities/search_movies_entities.dart';

class MultiSearchUsecase extends Usecase<String, SearchResult> {
  MultiSearchUsecase({required this.tmdbService});

  final TmdbService tmdbService;

  int _page = 1;

  String _query = "";

  bool _shouldLoad = true;

  final List<SearchItem> _data = List.empty(growable: true);

  CancelableOperation<Response<MultiSearch>>? _cancelableOperation;

  @override
  Future<SearchResult> execute(String params) async {
    _cancelableOperation?.cancel();

    if (_query != params) {
      _page = 1;
      _shouldLoad = true;
      _data.clear();
    }

    if (!_shouldLoad || params.isEmpty) {
      return Future.value(SearchResult(page: _page, results: []));
    }

    _query = params;

    _cancelableOperation =
        CancelableOperation.fromFuture(tmdbService.multiSearch(params, _page));

    final response = (await _cancelableOperation!.value).body!;
    final items = response.results
        .map(
          (entity) => entity.map(
            movie: (value) => SearchItem.movie(
              name: value.title,
              date: isNotBlank(value.releaseDate)
                  ? DateTime.parse(value.releaseDate!)
                  : null,
              poster: value.posterPath,
              backdrop: value.backdropPath,
              id: value.id,
              backdropThumb: value.backdropPath,
            ),
            tvShow: (tvshow) => SearchItem.tvShow(
              name: tvshow.name,
              date: isNotBlank(tvshow.firstAirDate)
                  ? DateTime.parse(tvshow.firstAirDate!)
                  : null,
              poster: tvshow.posterPath,
              backdrop: tvshow.backdropPath,
              id: tvshow.id,
              backdropThumb: tvshow.backdropPath,
            ),
            person: (person) => SearchItem.person(
              id: person.id,
              name: person.name,
              profilePicture: person.profilePath,
            ),
          ),
        )
        .toList();

    _data.addAll(items);

    final results = SearchResult(page: _page, results: _data.toList());

    if (response.totalPages == _page) {
      _shouldLoad = false;
    } else {
      _page++;
    }

    return results;
  }
}
