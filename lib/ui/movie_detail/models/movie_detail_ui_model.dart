import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast.dart';

part 'movie_detail_ui_model.freezed.dart';

@freezed
class MovieDetailUiModel with _$MovieDetailUiModel {
  factory MovieDetailUiModel({
    required int id,
    required String title,
    required String backdrop,
    String? description,
    double? rating,
    List<String>? genre,
    int? runtime,
    List<Cast>? cast,
    DateTime? releaseDate,
  }) = _MovieDetailUiModel;
}
