import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'color_utils.dart';

/// shows a bottom sheet
/// handles scenario of bottom sheet overlapping status bar
Future<T?> showPortfolioBottomSheet<T>({
  required BuildContext context,
  required Widget Function(BuildContext context) builder,
  bool isScrollControlled = true,
  bool useRootNavigator = true,
  bool isDismissible = true,
  bool enableDrag = true,
  int topMargin = 0,
}) =>
    showDialog<T>(
      context: context,
      builder: (_) => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: ColorUtils.getColor(
            context,
            scaffoldColor,
          ),
        ),
        child: builder(_),
      ),
    );
