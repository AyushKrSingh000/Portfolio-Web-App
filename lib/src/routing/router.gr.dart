// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProjectRoute.name: (routeData) {
      final args = routeData.argsAs<ProjectRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProjectPage(
          key: args.key,
          projectid: args.projectid,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProjectPage]
class ProjectRoute extends PageRouteInfo<ProjectRouteArgs> {
  ProjectRoute({
    Key? key,
    required int projectid,
    List<PageRouteInfo>? children,
  }) : super(
          ProjectRoute.name,
          args: ProjectRouteArgs(
            key: key,
            projectid: projectid,
          ),
          initialChildren: children,
        );

  static const String name = 'ProjectRoute';

  static const PageInfo<ProjectRouteArgs> page =
      PageInfo<ProjectRouteArgs>(name);
}

class ProjectRouteArgs {
  const ProjectRouteArgs({
    this.key,
    required this.projectid,
  });

  final Key? key;

  final int projectid;

  @override
  String toString() {
    return 'ProjectRouteArgs{key: $key, projectid: $projectid}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
