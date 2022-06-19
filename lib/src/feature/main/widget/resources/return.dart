import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';

/// {@template return.widget}
/// Return widget
/// {@endtemplate}
class Return extends StatelessWidget {
  /// {@macro return.widget}
  const Return({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      hoverColor: context.theme.hoverColor,
      onTap: () => AutoRouter.of(context).pop(),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            'Return',
            style: context.textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
