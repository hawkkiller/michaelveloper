import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:michaeldeveloper/src/feature/home/widget/home_screen.dart';
import 'package:michaeldeveloper/src/feature/main/widget/main_screen.dart';
import 'package:michaeldeveloper/src/feature/not_found/widget/not_found_screen.dart';

part 'routes.g.dart';

/// {@template home.route}
/// Home Route
/// {@endtemplate}
@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<MainRoute>(
      path: 'main',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  /// {@macro home.route}
  HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

/// {@template main.route}
/// Main Route
/// {@endtemplate}
class MainRoute extends GoRouteData {
  /// {@macro main.route}
  const MainRoute();

  @override
  Widget build(BuildContext context) => const MainScreen();
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
