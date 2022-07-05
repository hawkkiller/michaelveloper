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
    final colors = AppColorsLight();
    return _shared().copyWith(
      extensions: <ThemeExtension>[
        AppColorsExtension(
          primary: colors.primary,
          secondary: colors.secondary,
          light: colors.light,
          amber: colors.amber,
        ),
      ],
      scaffoldBackgroundColor: colors.primary,
      hoverColor: colors.secondary,
      brightness: Brightness.light,
      primaryColor: colors.primary,
      textTheme: _ThemeHelper._text(colors: colors),
      switchTheme: _ThemeHelper._switchTheme(colors: colors),
      tabBarTheme: _ThemeHelper._tab(colors: colors),
    );
  }

  /// dark theme
  static ThemeData dark() {
    final colors = AppColorsDark();
    return _shared().copyWith(
      extensions: <ThemeExtension>[
        AppColorsExtension(
          primary: colors.primary,
          secondary: colors.secondary,
          light: colors.light,
          amber: colors.amber,
        ),
      ],
      scaffoldBackgroundColor: colors.primary,
      hoverColor: colors.secondary,
      brightness: Brightness.dark,
      primaryColor: colors.primary,
      textTheme: _ThemeHelper._text(colors: colors),
      switchTheme: _ThemeHelper._switchTheme(colors: colors),
      tabBarTheme: _ThemeHelper._tab(colors: colors),
    );
  }
}

class _ThemeHelper {
  static TabBarTheme _tab({required AppColors colors}) => TabBarTheme(
        labelColor: Colors.amber,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: colors.light,
            ),
          ),
        ),
      );
  static TextTheme _text({required AppColors colors}) => TextTheme(
        headline1: TextStyle(
          fontFamily: 'Nexa',
          fontSize: 40,
          fontWeight: FontWeight.w700,
          color: colors.light,
        ),
        headline2: TextStyle(
          fontFamily: 'Nexa',
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: colors.light,
        ),
        headline3: TextStyle(
          fontFamily: 'Nexa',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: colors.light,
        ),
      );
  static SwitchThemeData _switchTheme({
    required AppColors colors,
  }) =>
      SwitchThemeData(
        thumbColor: MaterialStateProperty.all(colors.secondary),
        trackColor: MaterialStateProperty.all(colors.secondary),
        overlayColor: MaterialStateProperty.all(
          colors.secondary.withOpacity(0.3),
        ),
      );
}

/// {@template colors.extension}
/// colors extension
/// {@endtemplate}
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  /// {@macro colors.extension}
  AppColorsExtension({
    required this.primary,
    required this.secondary,
    required this.light,
    required this.amber,
  });
  @override
  AppColorsExtension copyWith({
    Color? primary,
    Color? secondary,
    Color? light,
    Color? amber,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      light: light ?? this.light,
      amber: amber ?? this.amber,
    );
  }

  @override
  AppColorsExtension lerp(
    ThemeExtension<ThemeExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      light: Color.lerp(light, other.light, t)!,
      amber: Color.lerp(amber, other.amber, t)!,
    );
  }

  final Color primary;
  final Color secondary;
  final Color light;
  final Color amber;
}
