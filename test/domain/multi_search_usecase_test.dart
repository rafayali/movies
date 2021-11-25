import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/remote/services/entities/mutli_search/multi_search.dart';
import 'package:movies_flutter/data/remote/services/tmdb_service.dart';
import 'package:movies_flutter/domain/search/multi_search_usecase.dart';

import '../utils/random_string.dart';

main() {
  group('when MultiSearchUsecase is invoked', () {
    test(
        '''page number should reset to 1 if it was increamented by a previous query''',
        () async {
      final mockTmdbService = _MockTmdbService();

      final usecase = MultiSearchUsecase(
        tmdbService: mockTmdbService,
        buildConfig: BuildConfig.create(),
      );

      final fakeMultiSearchResponse = await _getFakeMultiSearchResponse();

      when(() => mockTmdbService.multiSearch(any(), any(), any()))
          .thenAnswer((invocation) async => fakeMultiSearchResponse);

      final query = randomString(10);

      // when query is performed it should return result for first page
      final pageOneResults = await usecase.invoke(query);
      expect(pageOneResults.isValue, true);
      final value = pageOneResults.asValue!.value;
      expect(
          value.results.length, fakeMultiSearchResponse.body!.results.length);
      expect(value.page, equals(1));

      // should increament to second page when same query is passed
      final pageTwoResults = await usecase.invoke(query);
      expect(pageTwoResults.isValue, equals(true));
      expect(pageTwoResults.asValue!.value.page, equals(2));

      // when query is change it should reset page number
      final newResult = await usecase.invoke(randomString(8));
      expect(newResult.isValue, equals(true));
      expect(newResult.asValue!.value.page, equals(1));
    });

    test('''it should return aggregated data of all pages''', () async {
      final mockTmdbService = _MockTmdbService();
      final usecase = MultiSearchUsecase(
        tmdbService: mockTmdbService,
        buildConfig: BuildConfig.create(),
      );

      final fakeMultiSearchResponse = await _getFakeMultiSearchResponse();

      when(() => mockTmdbService.multiSearch(any(), any(), any()))
          .thenAnswer((invocation) async => fakeMultiSearchResponse);

      final query = randomString(10);

      // when query is performed it should return result for first page
      final pageOneResults = await usecase.invoke(query);
      expect(pageOneResults.isValue, true);
      final searchResultsOne = pageOneResults.asValue!.value;
      expect(searchResultsOne.results.length,
          fakeMultiSearchResponse.body!.results.length);
      expect(searchResultsOne.page, equals(1));

      // should increament to second page when same query is passed
      final pageTwoResults = await usecase.invoke(query);
      expect(pageTwoResults.isValue, equals(true));
      expect(pageTwoResults.asValue!.value.page, equals(2));
      expect(
          pageTwoResults.asValue!.value.results.length,
          equals(searchResultsOne.results.length +
              searchResultsOne.results.length));
    });

    test('with empty query, it should return empty results', () async {
      final mockTmdbService = _MockTmdbService();
      final usecase = MultiSearchUsecase(
        tmdbService: mockTmdbService,
        buildConfig: BuildConfig.create(),
      );

      final fakeMultiSearchResponse = await _getFakeMultiSearchResponse();

      when(() => mockTmdbService.multiSearch(any(), any(), any()))
          .thenAnswer((invocation) async => fakeMultiSearchResponse);

      final result = await usecase.invoke("");
      expect(result.isValue, equals(true));
      expect(result.asValue!.value.results.length, equals(0));
    });
  });

  test('''with a different query it should return results 
      if it was first invoked with a query which returned no results''',
      () async {
    final mockTmdbService = _MockTmdbService();
    final usecase = MultiSearchUsecase(
      tmdbService: mockTmdbService,
      buildConfig: BuildConfig.create(),
    );

    final emptyResponse = await _getFakeMultiSearchEmptyResponse();

    when(() => mockTmdbService.multiSearch(any(), any(), any()))
        .thenAnswer((invocation) async => emptyResponse);

    final query = randomString(10);

    // when query is performed it should return result for first page
    final pageOneResults = await usecase.invoke(query);
    expect(pageOneResults.isValue, true);
    final value = pageOneResults.asValue!.value;
    expect(value.results.length, emptyResponse.body!.results.length);
    expect(value.page, equals(1));

    // when query is change it should return valid data
    final response = await _getFakeMultiSearchResponse();

    when(() => mockTmdbService.multiSearch(any(), any(), any()))
        .thenAnswer((invocation) async => response);

    final newResult = await usecase.invoke(randomString(8));
    expect(newResult.isValue, equals(true));
    expect(newResult.asValue!.value.page, equals(1));
    expect(newResult.asValue!.value.results.length, equals(3));
  });
}

Future<Response<MultiSearch>> _getFakeMultiSearchResponse() async {
  final jsonFile = File('test/resources/multi_search/multi_search.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      MultiSearch.fromJson(jsonMap),
    ),
  );
}

Future<Response<MultiSearch>> _getFakeMultiSearchEmptyResponse() async {
  final jsonFile = File('test/resources/multi_search/empty_multi_search.json');
  final jsonMap =
      jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  return Future.value(
    Response(
      http.StreamedResponse(const Stream.empty(), HttpStatus.ok),
      MultiSearch.fromJson(jsonMap),
    ),
  );
}

class _MockTmdbService extends Mock implements TmdbService {}
