import 'package:flutter/material.dart';
import 'package:michaeldeveloper/src/core/constant/style/colors.dart';

/// the app theme
class AppTheme {
  /// light theme
  static ThemeData light() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.primaryLight,
      textTheme: _TextTheme.text(isDark: false),
      switchTheme: _SwitchTheme.switchTheme(isDark: false),
      brightness: Brightness.light,
      primaryColor: AppColors.primaryLight,
    );
  }

  /// dark theme
  static ThemeData dark() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.primaryDark,
      textTheme: _TextTheme.text(isDark: true),
      switchTheme: _SwitchTheme.switchTheme(isDark: true),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark,
    );
  }
}

class _TextTheme {
  static TextTheme text({required bool isDark}) => TextTheme(
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
}

class _SwitchTheme {
  static SwitchThemeData switchTheme({
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
