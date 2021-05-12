import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_item.dart';
import 'tv_item.dart';

part 'home_ui_model.freezed.dart';

@freezed
class HomeUiModel with _$HomeUiModel {
  factory HomeUiModel({
    required String name,
    required String imageUrl,
    required List<MovieItemUiModel> popularMovies,
    required List<TvShowUiModel> popularTvShows,
    required List<MovieItemUiModel> discoverMovies,
  }) = _HomeUiModel;
}
