import 'package:movies_flutter/configs.dart';
import 'package:movies_flutter/services/models/tv_show.dart';

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
