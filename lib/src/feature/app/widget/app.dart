import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/widget/material_context.dart';
import 'package:michaeldeveloper/src/core/widget/settings_scope.dart';
import 'package:michaeldeveloper/src/feature/initialization/model/repository_store.dart';
import 'package:michaeldeveloper/src/feature/initialization/widget/repository_scope.dart';

/// {@template app.app}
/// App widget
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app.app}
  const App({
    super.key,
    required this.repositoryStore,
  });

  /// The place where all dependencies are stored.
  final RepositoryStore repositoryStore;

  @override
  Widget build(BuildContext context) {
    return RepositoryScope(
      repositoryStore: repositoryStore,
      child: const SettingsScope(
        child: MaterialContext(),
      ),
    );
  }
}
