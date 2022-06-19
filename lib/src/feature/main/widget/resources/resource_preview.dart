import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:michaeldeveloper/src/core/constant/enum/resources_enum.dart';
import 'package:michaeldeveloper/src/core/constant/misc/links.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/github_resource_screen.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/linkedin_resource_screen.dart';
import 'package:michaeldeveloper/src/feature/main/widget/resources/telegram_resource_screen.dart';
import 'package:webviewx/webviewx.dart';

/// {@template resource_preview}
/// ResourcePreview widget
/// {@endtemplate}
class ResourcePreview extends StatefulWidget {
  /// {@macro resource_preview}
  ResourcePreview({
    @PathParam('r') required String type,
    super.key,
  }) : resource = ResourcesEnum.fromValue(type);

  /// the resource's url
  final ResourcesEnum resource;

  @override
  State<ResourcePreview> createState() => _ResourcePreviewState();
}

class _ResourcePreviewState extends State<ResourcePreview> {
  late final Widget child;

  @override
  void initState() {
    switch (widget.resource) {
      case ResourcesEnum.github:
        child = const GithubResourceScreen();
        break;
      case ResourcesEnum.linkedin:
        child = const LinkedinResourceScreen();
        break;
      case ResourcesEnum.telegram:
        child = const TelegramResourceScreen();
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: child,
      );
} // ResourcePreview
