import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/constant/style/colors.dart';

/// the app theme
class AppTheme {
  /// shared theme
  static ThemeData _shared() {
    return ThemeData(
      splashColor: Colors.transparent,
    );
  }

  /// light theme
  static ThemeData light() {
    return _shared().copyWith(
      scaffoldBackgroundColor: AppColors.primaryLight,
      hoverColor: AppColors.primaryDark,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryLight,
      textTheme: _ThemeHelper._text(isDark: false),
      switchTheme: _ThemeHelper._switchTheme(isDark: false),
      tabBarTheme: _ThemeHelper._tab(isDark: false),
    );
  }

  /// dark theme
  static ThemeData dark() {
    return _shared().copyWith(
      scaffoldBackgroundColor: AppColors.primaryDark,
      hoverColor: AppColors.primaryLight,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark,
      textTheme: _ThemeHelper._text(isDark: true),
      switchTheme: _ThemeHelper._switchTheme(isDark: true),
      tabBarTheme: _ThemeHelper._tab(isDark: true),
    );
  }
}

class _ThemeHelper {
  static TabBarTheme _tab({required bool isDark}) => const TabBarTheme(
        labelColor: Colors.amber,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.light,
            ),
          ),
        ),
      );
  static TextTheme _text({required bool isDark}) => TextTheme(
        headline1: TextStyle(
          fontFamily: 'Nexa',
          fontSize: 50,
          fontWeight: FontWeight.w700,
          color: isDark ? AppColors.lightGray : AppColors.light,
        ),
        headline2: TextStyle(
          fontFamily: 'Nexa',
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: isDark ? AppColors.lightGray : AppColors.light,
        ),
        headline3: TextStyle(
          fontFamily: 'Nexa',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: isDark ? AppColors.lightGray : AppColors.light,
        ),
      );
  static SwitchThemeData _switchTheme({
    required bool isDark,
  }) =>
      SwitchThemeData(
        thumbColor: isDark
            ? MaterialStateProperty.all(AppColors.primaryLight)
            : MaterialStateProperty.all(AppColors.primaryDark),
        trackColor: isDark
            ? MaterialStateProperty.all(AppColors.primaryLight)
            : MaterialStateProperty.all(AppColors.primaryDark),
        overlayColor: isDark
            ? MaterialStateProperty.all(AppColors.primaryLight.withOpacity(0.3))
            : MaterialStateProperty.all(AppColors.primaryDark.withOpacity(0.3)),
      );
}
