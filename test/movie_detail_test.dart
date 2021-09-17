import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/services/models/movie.dart';
import 'package:http/http.dart' as http;
import 'package:movies_flutter/services/models/movie_credits.dart';
import 'package:movies_flutter/ui/movie_detail/models/movie_detail_ui_model.dart';
import 'package:movies_flutter/ui/movie_detail/models/params.dart';
import 'package:movies_flutter/ui/movie_detail/movie_detail_viewmodel.dart';

import 'utils/random_string.dart';

void main() {
  group('when a movie detail is opened', () {
    final id = randomInt(8);
    final title = randomString(8);
    final backdropUrl = randomString(8);
    final params = MovieDetailParams(id, title, backdropUrl);

    final _MockTmdbService tmdbService = _MockTmdbService();

    late MovieDetailViewModel viewModel;

    setUp(() {
      viewModel = MovieDetailViewModel(
        params: params,
        tmdbService: tmdbService,
      );
    });

    tearDown(() {
      viewModel.dispose();
    });

    test('it should load movie detail successfully', () async {
      final states = <MovieDetailUiModel>[];

      when(() => tmdbService.getMovie(any())).thenAnswer(
        (_) => _getFakeMovie(),
      );

      when(() => tmdbService.getMovieCredits(any())).thenAnswer(
        (_) => _getFakeMovieCredits(),
      );

      viewModel.addListener(() => states.add(viewModel.state));

      expect(
        viewModel.state,
        equals(MovieDetailUiModel(id: id, title: title, backdrop: backdropUrl)),
      );

      await viewModel.load();

      verify(() => tmdbService.getMovie(any(that: equals(id)))).called(1);
      verify(() => tmdbService.getMovieCredits(any(that: equals(id))))
          .called(1);
      expect(states.length, equals(1));
      expect(states.first, isA<MovieDetailUiModel>());

      assert(true);
    });
  });
}

Future<Response<Movie>> _getFakeMovie() async {
  final jsonFile = File('test/resources/movie.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      Movie.fromJson(jsonMap),
    ),
  );
}

Future<Response<Credits>> _getFakeMovieCredits() async {
  final jsonFile = File('test/resources/movie_credits.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      Credits.fromJson(jsonMap),
    ),
  );
}

class _MockTmdbService extends Mock implements TmdbService {}
