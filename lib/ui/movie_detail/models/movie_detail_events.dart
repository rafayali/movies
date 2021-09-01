import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_events.freezed.dart';

@freezed
class MovieDetailEvents with _$MovieDetailEvents {
  const factory MovieDetailEvents.message(String message) =
      MovieDetailEventsMessage;
}
