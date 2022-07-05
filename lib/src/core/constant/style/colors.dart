// ignore_for_file: public_member_api_docs
import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();

  abstract final Color primary;
  abstract final Color secondary;
  abstract final Color light;
  abstract final Color amber;
}

class AppColorsDark implements AppColors {
  AppColorsDark();

  @override
  final primary = const Color(0xFF0A0E21);

  @override
  final light = const Color(0xFFF5F5F5);

  @override
  final amber = const Color(0xffFFC107);

  @override
  final secondary = const Color(0xFF1B1F33);
}

class AppColorsLight implements AppColors {
  AppColorsLight();

  @override
  final primary = const Color(0xFF1B1F33);

  @override
  final light = const Color(0xFFE0E0E0);

  @override
  final amber = const Color(0xffFFC107);

  @override
  final secondary = const Color(0xFF0A0E21);
}
