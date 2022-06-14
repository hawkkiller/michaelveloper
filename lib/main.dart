import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/firebase/firebase_config.dart';
import 'package:michaeldeveloper/src/core/logic/logger/logger.dart';
import 'package:michaeldeveloper/src/feature/app/widget/app.dart';
import 'package:michaeldeveloper/src/feature/initialization/controller/initialization_controller.dart';
import 'package:michaeldeveloper/src/feature/initialization/model/repository_store.dart';

/// The entrypoint.There will no be any deferred
/// runners because this project will only be
/// used in Web.
Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      final controller = InitializationController();
      final repositoryStore = await controller
          .initialize()
          .drain<void>()
          .then<RepositoryStore>((_) => controller.getResult());
      runApp(App(repositoryStore: repositoryStore));
    },
    Logger.logZone,
  );
}
