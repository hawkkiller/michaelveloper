import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';
import 'package:michaeldeveloper/src/feature/feed/widget/resource_item.dart';
/// {@template resources}
/// All resources that the author has,
/// i.e. linkedIn, github, twitter, etc.
/// {@endtemplate}
class Resources extends StatelessWidget {
  /// {@macro resources}
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: context.apprSize(50),
      children: <ResourceItem>[
        ResourceItem.github(),
        ResourceItem.linkedIn(),
        ResourceItem.telegram(),
      ],
    );
  }
}
