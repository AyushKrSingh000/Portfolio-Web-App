import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../routing/router.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  bool isChanged = true;
  late final Timer timer;
  @override
  void initState() {
    _navigateAfterDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          isDark
              ? 'assets/lottie/dark_splash.json'
              : 'assets/lottie/light_splash.json',
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }

  _navigateAfterDelay() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    context.replaceRoute(HomeRoute());
  }
}
