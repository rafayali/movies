import 'package:flutter/material.dart';
import 'package:movies_flutter/domain/detail/entities/movie_detail.dart';
import 'package:movies_flutter/domain/detail/load_movie_detail_usecase.dart';
import 'package:movies_flutter/domain/detail/load_tv_show_detail_usecase.dart';
import 'package:movies_flutter/ui/movie_detail/view/movie_detail_page.dart';
import 'package:movies_flutter/ui/movie_detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:provider/provider.dart';

class MovieDetailRoute extends MaterialPageRoute {
  MovieDetailRoute({required RouteSettings settings})
      : super(
          builder: (context) => ChangeNotifierProvider<MovieDetailViewModel>(
            create: (context) => MovieDetailViewModel(
              params: settings.arguments as MovieDetailParams,
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
          settings: settings,
        );
}
