import 'dart:async';
import 'package:michaeldeveloper/src/core/logic/logger/logger.dart';

// ignore: always_use_package_imports
import 'runner_stub.dart'
    if (dart.library.html) 'runner_web.dart'
    if (dart.library.io) 'runner_io.dart' as runner;

/// The entrypoint.There will no be any deferred
/// runners because this project will only be
/// used in Web.
Future<void> main() async {
  await runZonedGuarded<FutureOr<void>>(
    runner.run,
    Logger.logZone,
  );
}
