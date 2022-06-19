import 'package:flutter/material.dart';

/// Just helpful shortcuts
extension HelpfulShortcuts on BuildContext {
  /// get theme from the current context
  ThemeData get theme => Theme.of(this);

  /// get textheme from the current context
  TextTheme get textTheme => theme.textTheme;
}
