import 'package:flutter/foundation.dart';

abstract class ViewModel<T> extends ChangeNotifier {
  ViewModel(T state) : _state = state;

  T _state;
  T get state => _state;

  void setState(T value) {
    _state = value;
    notifyListeners();
  }
}
