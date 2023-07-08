import 'dart:math';

import 'package:flutter/material.dart';

abstract class ColorUtils {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);

  /// returns light theme or dark theme color based on the theme
  static Color getColor(BuildContext context, AppCustomColor color) {
    return Theme.of(context).brightness == Brightness.dark
        ? color.darkThemeColor ??
            color
                .lightThemeColor // returns light theme color, if dark theme color is null
        : color.lightThemeColor;
  }
}

/// models light theme and dark theme colors
class AppCustomColor {
  final Color lightThemeColor;
  final Color? darkThemeColor;

  const AppCustomColor({
    required this.lightThemeColor,
    this.darkThemeColor,
  });
}
