import 'dart:developer';

/// handful methods for logging purposes
abstract class Logger {
  /// log errors in a zone
  static void logZone(Object error, StackTrace stackTrace) => log(
        'RootZone caught error',
        error: error,
        stackTrace: stackTrace,
      );

  /// just log
  static void l(Object? object, [Object? error, StackTrace? s]) => log(
        object.toString(),
        error: error,
        time: DateTime.now(),
        stackTrace: s,
      );
}
