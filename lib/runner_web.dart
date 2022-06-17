// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:michaeldeveloper/runner_shared.dart' as shared;
import 'package:michaeldeveloper/src/core/logic/logger/logger.dart';

/// WEB runner
Future<void> run() async {
  Logger.l('running on WEB ${window.navigator.platform}');
  await shared.run();
}
