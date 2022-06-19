import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:michaeldeveloper/src/core/localizations/localizations.dart';
import 'package:michaeldeveloper/src/core/logic/logger/logger.dart';
import 'package:michaeldeveloper/src/core/router/router.dart';
import 'package:michaeldeveloper/src/core/widget/settings_scope.dart';

/// {@template material_context.material_context}
/// Material context
/// {@endtemplate}
class MaterialContext extends StatefulWidget {
  /// {@template material_context.material_context}
  const MaterialContext({super.key});

  @override
  State<MaterialContext> createState() => _MaterialContextState();
}

class _MaterialContextState extends State<MaterialContext> {
  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();
    return ValueListenableBuilder<ThemeData>(
      valueListenable: SettingsScope.of(context).themeData,
      builder: (context, themeData, _) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Software Engineer',
        restorationScopeId: 'app',
        theme: themeData,
        routerDelegate: _router.delegate(
          initialDeepLink: _router.routeInfoProvider().value.location,
        ),
        routeInformationParser: _router.defaultRouteParser(),
        routeInformationProvider: _router.routeInfoProvider(),
        localizationsDelegates: AppLocalization.localizationDelegates,
        supportedLocales: AppLocalization.supportedLocales,
        locale: Locale(Intl.defaultLocale ?? 'en'),
      ),
    );
  }
}
