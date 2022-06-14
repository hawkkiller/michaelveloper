import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:michaeldeveloper/src/feature/feed/widget/feed_screen.dart';
import 'package:michaeldeveloper/src/feature/not_found/widget/not_found_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<FeedRoute>(
  path: '/',
)
/// HomeRoute
class FeedRoute extends GoRouteData {
  /// HomeRoute
  const FeedRoute();

  @override
  Widget build(BuildContext context) => const FeedScreen();
}

/// NotFoundRoute
@internal
class NotFoundRoute extends GoRouteData {
  /// NotFoundRoute
  NotFoundRoute({this.exception});
  /// exception occured during routing
  final Exception? exception;

  @override
  Widget build(BuildContext context) => NotFoundScreen(exception: exception);
}
