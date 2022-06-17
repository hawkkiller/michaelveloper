import 'package:flutter/material.dart';

/// Size extensions on buildContext.
extension Size<T extends Object> on BuildContext {
  /// get appropriate size for the current device
  double apprSize(double value) {
    final size = MediaQuery.of(this).size;
    final k = size.width / size.height;
    return k > 1
        ? value
        : k < 0.5
            ? value * 0.5
            : value * k;
  }
}

/// Just helpful shortcuts
extension HelpfulShortcuts on BuildContext {
  /// get theme from the current context
  ThemeData get theme => Theme.of(this);

  /// get textheme from the current context
  TextTheme get textTheme => theme.textTheme;
}

/// Style extensions on buildContext.
extension Style on BuildContext {
  /// get appropriate font for the current device
  TextStyle? apprFont(TextStyle? value) {
    if (value == null) return value;
    final size = MediaQuery.of(this).size;
    final k = size.width / size.height;
    return value.copyWith(
      fontSize: (k > 1
              ? value.fontSize!
              : k < 0.5
                  ? value.fontSize! * 0.5
                  : value.fontSize! * k) *
          1.35,
    );
  }
}
