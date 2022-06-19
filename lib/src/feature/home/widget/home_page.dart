import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/localizations/localizations.dart';
import 'package:michaeldeveloper/src/core/router/router.dart';

/// {@template home_screen}
/// HomeScreen widget
/// {@endtemplate}
class HomePage extends StatefulWidget {
  /// {@macro home_screen}
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: AutoTabsRouter.tabBar(
          routes: const [
            MainRouter(),
            AboutPageRoute(),
          ],
          builder: (context, child, controller) {
            return Scaffold(
              body: Column(
                children: [
                  TabBar(
                    controller: controller,
                    tabs: [
                      Tab(text: AppLocalization.of(context).main),
                      Tab(text: AppLocalization.of(context).aboutMe),
                    ],
                  ),
                  Expanded(
                    child: child,
                  ),
                ],
              ),
            );
          },
        ),
      );
} // HomeScreen
