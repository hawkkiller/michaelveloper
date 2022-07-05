import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/resource_item.dart';

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
      spacing: 20,
      children: <ResourceItem>[
        ResourceItem.github(context),
        ResourceItem.linkedIn(context),
        ResourceItem.telegram(),
      ],
    );
  }
}
