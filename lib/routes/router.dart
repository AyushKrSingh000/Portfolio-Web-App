import 'package:get/get.dart';
import 'package:my_portfolio/pages/project_screen.dart';

import '../pages/home_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: '/',
      page: () => HomePage(
            projectId: 0,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.leftToRight),
  GetPage(
      name: '/about',
      page: () => HomePage(
            projectId: 1,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.leftToRight),
  GetPage(
      name: '/projects',
      page: () => HomePage(
            projectId: 2,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.leftToRight),
  GetPage(
      name: '/contact',
      page: () => HomePage(
            projectId: 3,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.leftToRight),
  GetPage(
      name: '/project1',
      page: () => ProjectSection(
            projectid: 0,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/project2',
      page: () => ProjectSection(
            projectid: 1,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/project3',
      page: () => ProjectSection(
            projectid: 2,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/project4',
      page: () => ProjectSection(
            projectid: 3,
          ),
      transitionDuration: const Duration(milliseconds: 5),
      transition: Transition.rightToLeft),
];
