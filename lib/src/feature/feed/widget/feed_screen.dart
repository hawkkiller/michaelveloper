import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/localizations/localizations.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';
import 'package:michaeldeveloper/src/core/widget/settings_scope.dart';
import 'package:michaeldeveloper/src/feature/feed/widget/resources.dart';

/// {@nodoc}
class FeedScreen extends StatefulWidget {
  /// {@nodoc}
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
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
                    value: SettingsScope.of(context, listen: true).isDarkTheme,
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
                  style: context.apprFont(context.textTheme.headline1),
                  maxLines: 1,
                ),
                AutoSizeText(
                  AppLocalization.of(context)
                      .surname
                      .split('')
                      .join(' ')
                      .toUpperCase(),
                  style: context.apprFont(context.textTheme.headline3),
                ),
                SizedBox(height: context.apprSize(100)),
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
