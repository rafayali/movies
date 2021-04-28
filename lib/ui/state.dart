import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class UiState<T> with _$UiState<T> {
  const factory UiState.success(T? data) = Success<T>;
  const factory UiState.loading() = Loading;
  const factory UiState.error(String message) = Error<T>;
}
