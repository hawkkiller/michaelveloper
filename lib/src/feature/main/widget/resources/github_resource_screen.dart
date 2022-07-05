import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/assets/assets.gen.dart';
import 'package:michaeldeveloper/src/core/constant/misc/links.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/return.dart';
import 'package:url_launcher/url_launcher.dart';

/// {@template github_resource_screen}
/// GithubResourceScreen widget
/// {@endtemplate}
class GithubResourceScreen extends StatefulWidget {
  /// {@macro github_resource_screen}
  const GithubResourceScreen({
    super.key,
  });

  @override
  State<GithubResourceScreen> createState() => _GithubResourceScreenState();
}

class _GithubResourceScreenState extends State<GithubResourceScreen> {
  Color? containerColor;
  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Return(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Assets.icons.github.svg(
                height: 100,
                width: 100,
                color: context.colors.light,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MaterialButton(
              onPressed: () {
                launchUrl(Uri.parse(Links.github));
              },
              child: Text(
                'Open',
                style: context.textTheme.headline3,
              ),
            ),
          )
        ],
      );
} // GithubResourceScreen
