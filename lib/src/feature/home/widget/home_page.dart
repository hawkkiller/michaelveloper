import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/constant/style/colors.dart';
import 'package:michaeldeveloper/src/core/localizations/localizations.dart';
import 'package:michaeldeveloper/src/core/router/router.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';

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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                      isScrollable: true,
                      controller: controller,
                      tabs: [
                        Tab(
                          child: Text(
                            AppLocalization.of(context).main,
                            style: context.textTheme.headline3?.copyWith(
                              color: AppColors.amber,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppLocalization.of(context).aboutMe,
                            style: context.textTheme.headline3?.copyWith(
                              color: AppColors.amber,
                            ),
                          ),
                        ),
                      ],
                    ),
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
