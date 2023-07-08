import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants/enums.dart';
import 'constants/theme.dart';
import 'logic/repositories/theme_repository.dart';
import 'routing/router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  void dispose() {
    super.dispose();
    _appRouter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentThemeMode = ref.watch(
      themeRepositoryProvider.select(
        (appTheme) {
          switch (appTheme) {
            case AppTheme.light:
              return ThemeMode.light;
            case AppTheme.dark:
              return ThemeMode.dark;
            default:
              return ThemeMode.system;
          }
        },
      ),
    );
    // set status bar color, based on the theme mode
    if (currentThemeMode == ThemeMode.dark) {
      // change status bar color to light for dark theme
      // fixes the issue of dark status bar icons in dark theme (when system theme is light)
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    } else if (currentThemeMode == ThemeMode.light) {
      // change status bar color to dark for light theme
      // fixes the issue of light status bar icons in light theme (when system theme is dark)
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    }

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Potfolio Web App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentThemeMode,
      routerConfig: _appRouter.config(),
    );
  }
}
