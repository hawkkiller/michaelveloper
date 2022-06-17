import 'dart:io' as io;

import 'package:michaeldeveloper/runner_shared.dart' as shared;
import 'package:michaeldeveloper/src/core/logic/logger/logger.dart';

/// IO runner
Future<void> run() async {
  Logger.l('running on IO ${io.Platform.operatingSystem}');
  await shared.run();
}
