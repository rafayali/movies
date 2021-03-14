class UiState<T> {}

class Success<T> extends UiState<T> {
  final T result;

  Success(this.result);
}

class Loading<T> implements UiState<T> {}

class Error<T> implements UiState<T> {
  final String message;

  Error(this.message);
}
