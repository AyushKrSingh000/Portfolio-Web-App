import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import 'colors.dart';

/// light theme of the app
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: ColorUtils.generateMaterialColor(primaryColor),
  scaffoldBackgroundColor: scaffoldColor.lightThemeColor,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    toolbarHeight: 70,
    titleSpacing: 20,
  ),
);

/// dark theme of the app
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: ColorUtils.generateMaterialColor(primaryColor),
  scaffoldBackgroundColor: scaffoldColor.darkThemeColor!,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    toolbarHeight: 70,
    titleSpacing: 20,
  ),
);
