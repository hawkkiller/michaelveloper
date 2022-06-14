import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:michaeldeveloper/src/core/localizations/localizations.dart';
import 'package:michaeldeveloper/src/core/router/app_router.dart';
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
    final routerController = AppRouter.of(context);
    return ValueListenableBuilder<ThemeData>(
      valueListenable: SettingsScope.of(context).themeData,
      builder: (context, themeData, _) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Software Engineer',
        restorationScopeId: 'app',
        theme: themeData,
        routeInformationParser: routerController.router.routeInformationParser,
        routerDelegate: routerController.router.routerDelegate,
        localizationsDelegates: AppLocalization.localizationDelegates,
        supportedLocales: AppLocalization.supportedLocales,
        locale: Locale(Intl.defaultLocale ?? 'en'),
      ),
    );
  }
}
