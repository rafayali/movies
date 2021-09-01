import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/services/models/account.dart';
import 'package:movies_flutter/services/models/discover/discover_movies.dart';
import 'package:movies_flutter/services/models/genres.dart';
import 'package:movies_flutter/services/models/popular_movies.dart';
import 'package:movies_flutter/services/models/popular_tv.dart';
import 'package:movies_flutter/services/tmdb_service.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';
import 'package:movies_flutter/ui/home/home_viewmodel.dart';
import 'package:movies_flutter/ui/home/models/home_ui_model.dart';
import 'package:movies_flutter/ui/state.dart';

import 'utils/random_string.dart';

void main() {
  final _MockAuthStore authStore = _MockAuthStore();
  final _MockTmdbService tmdbService = _MockTmdbService();
  late HomeViewModel homeViewModel;

  setUpAll(() {});

  setUp(() {
    homeViewModel = HomeViewModel(
      tmdbService: tmdbService,
      authStore: authStore,
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
    expect(stateValues.first, isA<Success<HomeUiModel>>());
  });

  tearDown(() {
    homeViewModel.dispose();
  });
}

Future<PopularMovies> _getFakePopularMovies() async {
  final jsonFile = File('test/resources/popular_movies.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(PopularMovies.fromJson(jsonMap));
}

Future<PopularTv> _getFakePopularTvShows() async {
  final jsonFile = File('test/resources/popular_tv_shows.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(PopularTv.fromJson(jsonMap));
}

Future<DiscoverMovies> _getFakeDiscoverMovies() async {
  final jsonFile = File('test/resources/disover_movies.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(DiscoverMovies.fromJson(jsonMap));
}

Future<Genres> _getFakeGenres() async {
  final jsonFile = File('test/resources/genres.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(Genres.fromJson(jsonMap));
}

Future<Account> _getFakeAccount() async {
  final jsonFile = File('test/resources/account.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(Account.fromJson(jsonMap));
}

class _MockTmdbService extends Mock implements TmdbService {}

class _MockAuthStore extends Mock implements AuthStore {}
