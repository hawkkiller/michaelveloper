import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template main_router_page}
/// MainRouterPage widget
/// {@endtemplate}
class MainRouterPage extends StatelessWidget {
  /// {@macro main_router_page}
  const MainRouterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const AutoRouter();
} // MainRouterPage
