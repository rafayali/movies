import 'package:async/async.dart';
import 'package:flutter/foundation.dart';

/// Base class for implementing usecases.
abstract class Usecase<Input, Output> {
  /// Invokes usecase with implemention of [execute] with either [Result.value]
  /// or [Result.error].
  @nonVirtual
  Future<Result<Output>> invoke(Input params) async {
    try {
      return Result.value(await execute(params));
    } catch (exception, stackTrace) {
      debugPrint(stackTrace.toString());
      return Result.error(exception, stackTrace);
    }
  }

  /// Override this function in subclass to provide execution logic
  ///
  /// Do not call this method directly, use [invoke].
  @protected
  Future<Output> execute(Input params);
}

/// Placeholder class for situations where no arguments needs to be passed
class Nothing {}
