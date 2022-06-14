import 'dart:developer';

/// handful methods for logging purposes
abstract class Logger {
  /// log errors in a zone
  static void logZone(Object error, StackTrace stackTrace) => log(
        'RootZone caught error',
        error: error,
        stackTrace: stackTrace,
      );
}
