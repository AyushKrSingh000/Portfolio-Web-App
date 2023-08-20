import 'package:flutter/material.dart';

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
    showModalBottomSheet<T>(
        context: context,
        enableDrag: enableDrag,
        useRootNavigator: useRootNavigator,
        isDismissible: isDismissible,
        isScrollControlled: isScrollControlled,
        backgroundColor: Colors.transparent,
        constraints: const BoxConstraints(
          maxWidth: 400,
          maxHeight: 1000,
        ),
        builder: (BuildContext context) {
          return Container(
            constraints: const BoxConstraints(maxWidth: 500),
            decoration: BoxDecoration(
              color: ColorUtils.getColor(
                context,
                const AppCustomColor(
                  lightThemeColor: Colors.white,
                  darkThemeColor: Color(0xff181818),
                ),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: builder(context),
            ),
          );
        });
