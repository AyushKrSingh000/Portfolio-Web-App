import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/home/home_screen.dart';
import '../ui/project/project_screen.dart';
import '../ui/splash/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: SplashRoute.page,
    ),
    AutoRoute(
      path: '/home',
      page: HomeRoute.page,
    ),
    AutoRoute(
      path: '/project',
      page: ProjectRoute.page,
    ),
  ];
}
