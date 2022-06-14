import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/router/routes.dart';

/// {@template not_found_screen.not_found_screen}
/// NotFoundScreen widget
/// {@endtemplate}
class NotFoundScreen extends StatelessWidget {
  /// {@macro not_found_screen.not_found_screen}
  const NotFoundScreen({
    this.exception,
    Key? key,
  }) : super(key: key);

  final Exception? exception;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Not Found'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: TextButton.icon(
              onPressed: () => const FeedRoute().go(context),
              icon: const Icon(Icons.home),
              label: const Text('Go home'),
            ),
          ),
        ),
      );
} // NotFoundScreen
