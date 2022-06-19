import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/assets/assets.gen.dart';
import 'package:michaeldeveloper/src/core/constant/misc/links.dart';
import 'package:michaeldeveloper/src/core/constant/style/colors.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/return.dart';
import 'package:url_launcher/url_launcher.dart';

/// {@template linkedin_resource_screen}
/// LinkedinResourceScreen widget
/// {@endtemplate}
class LinkedinResourceScreen extends StatelessWidget {
  /// {@macro linkedin_resource_screen}
  const LinkedinResourceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Return(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Assets.icons.linkedin.svg(
                height: 100,
                width: 100,
                color: AppColors.amber,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MaterialButton(
              onPressed: () {
                launchUrl(Uri.parse(Links.linkedin));
              },
              child: Text(
                'Open',
                style: context.textTheme.headline3,
              ),
            ),
          )
        ],
      );
} // LinkedinResourceScreen
