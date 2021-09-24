import 'package:movies_flutter/config.dart';
import 'package:movies_flutter/data/remote/services/entities/tv_show/tv_show.dart';
import 'package:dartx/dartx.dart';

class TvShowItem {
  final String name;
  final DateTime? date;
  final String poster;
  final String backdrop;
  final int id;

  TvShowItem(this.name, this.date, this.poster, this.backdrop, this.id);
}

extension TvShowExtensions on TvShow {
  TvShowItem toTvShowUiModel() {
    return TvShowItem(
      name,
      firstAirDate?.isNotBlank == true ? DateTime.parse(firstAirDate!) : null,
      '${BuildConfigs.baseImageUrlW500}$posterPath',
      '${BuildConfigs.baseImageUrlOriginal}$backdropPath',
      id,
    );
  }
}
