import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/data/auth_store.dart';
import 'package:movies_flutter/domain/home/load_home_usecase.dart';
import 'package:movies_flutter/ui/landing/discover/models/home_ui_model.dart';
import 'package:movies_flutter/ui/landing/discover/viewmodel/discover_viewmodel.dart';
import 'package:movies_flutter/core/ui_state.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/data/remote/services/entities/account/account.dart';
import 'package:movies_flutter/data/remote/services/entities/discover_movies/discover_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/genres/genres.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_movies/popular_movies.dart';
import 'package:movies_flutter/data/remote/services/entities/popular_tv/popular_tv.dart';

import '../utils/random_string.dart';

void main() {
  final _MockAuthStore authStore = _MockAuthStore();
  final _MockTmdbService tmdbService = _MockTmdbService();
  late HomeViewModel homeViewModel;

  setUp(() {
    homeViewModel = HomeViewModel(
      loadHomeUsecase: LoadHomeUsecase(
        tmdbService: tmdbService,
        authStore: authStore,
      ),
    );
  });

  test('loads movies data successfully', () async {
    final stateValues = <UiState>[];

    // given
    final sessionId = randomString(8);
    when(() => authStore.getSessionId()).thenAnswer(
      (_) => Future.value(sessionId),
    );
    when(() => tmdbService.getPopularMovies()).thenAnswer(
      (_) => _getFakePopularMovies(),
    );
    when(() => tmdbService.getPopularTvShows()).thenAnswer(
      (_) => _getFakePopularTvShows(),
    );
    when(() => tmdbService.discoverMovies()).thenAnswer(
      (_) => _getFakeDiscoverMovies(),
    );
    when(() => tmdbService.getMovieGenres()).thenAnswer(
      (_) => _getFakeGenres(),
    );
    when(() => tmdbService.account(sessionId)).thenAnswer(
      (invocation) => _getFakeAccount(),
    );
    homeViewModel.addListener(() => stateValues.add(homeViewModel.state));

    // verify initial state to be UiState.loading
    expect(homeViewModel.state, equals(const UiState.loading()));

    // then
    await homeViewModel.load();

    // verify
    verify(() => tmdbService.account(any(that: equals(sessionId)))).called(1);
    expect(stateValues, hasLength(1));
    expect(stateValues.first, isA<Success<HomeModel>>());
  });

  tearDown(() {
    homeViewModel.dispose();
  });
}

Future<Response<PopularMovies>> _getFakePopularMovies() async {
  final jsonFile = File('test/resources/popular_movies.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      PopularMovies.fromJson(jsonMap),
    ),
  );
}

Future<Response<PopularTv>> _getFakePopularTvShows() async {
  final jsonFile = File('test/resources/popular_tv_shows.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      PopularTv.fromJson(jsonMap),
    ),
  );
}

Future<Response<DiscoverMovies>> _getFakeDiscoverMovies() async {
  final jsonFile = File('test/resources/disover_movies.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      DiscoverMovies.fromJson(jsonMap),
    ),
  );
}

Future<Response<Genres>> _getFakeGenres() async {
  final jsonFile = File('test/resources/genres.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      Genres.fromJson(jsonMap),
    ),
  );
}

Future<Response<Account>> _getFakeAccount() async {
  final jsonFile = File('test/resources/account.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      Account.fromJson(jsonMap),
    ),
  );
}

class _MockTmdbService extends Mock implements TmdbService {}

class _MockAuthStore extends Mock implements AuthStore {}
