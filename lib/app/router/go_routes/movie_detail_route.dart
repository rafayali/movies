import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:provider/provider.dart';

class MovieDetailRoute extends GoRoute {
  MovieDetailRoute()
      : super(
          name: 'movie',
          path: 'movie/:movieId',
          pageBuilder: (context, state) => MaterialPage(
            child: ChangeNotifierProvider<MovieDetailViewModel>(
              create: (context) => MovieDetailViewModel(
                params: _createMovieDetailParam(state),
                loadMovieDetailUsecase: LoadMovieDetailUsecase(
                  tmdbService: context.read(),
                  buildConfig: context.read(),
                ),
                loadTvShowDetailUsecase: LoadTvShowDetailUsecase(
                  tmdbService: context.read(),
                  buildConfig: context.read(),
                ),
              ),
              child: const MovieDetailPage(),
            ),
          ),
        );
}

MovieDetailParams _createMovieDetailParam(GoRouterState state) {
  final movieId = state.pathParameters['movieId']!.toInt();
  final title = state.uri.queryParameters['title']!;
  final backdropUrl = state.uri.queryParameters['backdropUrl'];
  final type = state.uri.queryParameters['type']!.toType();

  return MovieDetailParams(
    id: movieId,
    title: title,
    backdropUrl: backdropUrl,
    type: type,
  );
}
