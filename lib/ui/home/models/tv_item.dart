import 'package:movies_flutter/api/models/tv_show.dart';
import 'package:movies_flutter/configs.dart';

class TvShowUiModel {
  final String name;
  final DateTime date;
  final String poster;
  final String backdrop;
  final int id;

  TvShowUiModel(this.name, this.date, this.poster, this.backdrop, this.id);
}

extension TvShowToUiModel on TvShow {
  TvShowUiModel toTvShowUiModel() {
    return TvShowUiModel(
      name,
      firstAirDate,
      '${BuildConfigs.BaseImageUrlW500}$posterPath',
      '${BuildConfigs.BaseImageUrlOriginal}$backdropPath',
      id,
    );
  }
}
