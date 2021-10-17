import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_item.dart';
import 'tv_item.dart';

part 'home_ui_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    required String name,
    required String imageUrl,
    required List<MovieItem> popularMovies,
    required List<TvShowItem> popularTvShows,
    required List<MovieItem> discoverMovies,
  }) = _HomeModel;
}
