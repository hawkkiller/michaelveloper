import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/assets/assets.gen.dart';
import 'package:michaeldeveloper/src/core/constant/style/colors.dart';
import 'package:michaeldeveloper/src/core/localizations/localizations.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';
import 'package:michaeldeveloper/src/core/widget/settings_scope.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/resources.dart';

/// {@nodoc}
class MainPage extends StatefulWidget {
  /// {@nodoc}
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  void _switchTheme(void _) {
    SettingsScope.of(context).isDarkTheme
        ? SettingsScope.of(context).setLightTheme()
        : SettingsScope.of(context).setDarkTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Switch(
                    value: SettingsScope.of(
                      context,
                      listen: true,
                    ).isDarkTheme,
                    onChanged: _switchTheme,
                  ),
                ),
                const Spacer(),
                AutoSizeText(
                  AppLocalization.of(context)
                      .name
                      .split('')
                      .join(' ')
                      .toUpperCase(),
                  style: context.textTheme.headline1,
                  maxLines: 1,
                ),
                AutoSizeText(
                  AppLocalization.of(context)
                      .surname
                      .split('')
                      .join(' ')
                      .toUpperCase(),
                  style: context.textTheme.headline3,
                ),
                const SizedBox(
                  height: 100,
                ),
                const Resources(),
                const Spacer(),
              ],
            ),
          ),
        ],
        restorationId: 'feed',
      ),
    );
  }
}
