import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/constant/style/app_theme.dart';

/// Just helpful shortcuts
extension HelpfulShortcuts on BuildContext {
  /// get theme from the current context
  ThemeData get theme => Theme.of(this);

  /// get textheme from the current context
  TextTheme get textTheme => theme.textTheme;

  /// get color extension
  AppColorsExtension get colors => theme.extension<AppColorsExtension>()!;
}
