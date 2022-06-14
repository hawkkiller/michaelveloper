import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// A wrapper on generated localization data that makes
/// it more convenient to access from the app
class AppLocalization {
  /// the of method to access localization
  static AppLocalizations of(BuildContext context) => AppLocalizations.of(context)!;
  /// the delegate for the localization
  static const delegate = AppLocalizations.delegate;
  /// all supported locales
  static const supportedLocales = AppLocalizations.supportedLocales;
  /// all delegates
  static const localizationDelegates = AppLocalizations.localizationsDelegates;
}
