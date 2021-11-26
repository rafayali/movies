import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/data/remote/services/entities/movie/movie.dart';
import 'package:http/http.dart' as http;
import 'package:movies_flutter/data/remote/services/entities/movie_credits/movie_credits.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';

import '../utils/random_string.dart';

void main() {
  group('when a movie detail is opened', () {
    final id = randomInt(8);
    final title = randomString(8);
    final backdropUrl = randomString(8);
    final params = MovieDetailParams(
      id: id,
      title: title,
      backdropUrl: backdropUrl,
      type: Type.movie,
    );

    final _MockTmdbService tmdbService = _MockTmdbService();

    late MovieDetailViewModel viewModel;

    final BuildConfig buildConfig = BuildConfig.create();

    setUp(() {
      viewModel = MovieDetailViewModel(
        params: params,
        loadMovieDetailUsecase: LoadMovieDetailUsecase(
          tmdbService: tmdbService,
          buildConfig: buildConfig,
        ),
        loadTvShowDetailUsecase: LoadTvShowDetailUsecase(
          tmdbService: tmdbService,
          buildConfig: buildConfig,
        ),
      );
    });

    tearDown(() {
      viewModel.dispose();
    });

    test('it should load movie detail successfully', () async {
      final states = <MovieDetail>[];

      when(() => tmdbService.getMovie(any(), any())).thenAnswer(
        (_) => _getFakeMovie(),
      );

      when(() => tmdbService.getMovieCredits(any(), any())).thenAnswer(
        (_) => _getFakeMovieCredits(),
      );

      viewModel.addListener(() => states.add(viewModel.state));

      expect(
        viewModel.state,
        equals(MovieDetail(id: id, title: title, backdrop: backdropUrl)),
      );

      await viewModel.load();

      verify(() => tmdbService.getMovie(any(), any(that: equals(id))))
          .called(1);
      verify(() => tmdbService.getMovieCredits(any(), any(that: equals(id))))
          .called(1);
      expect(states.length, equals(1));
      expect(states.first, isA<MovieDetail>());

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
