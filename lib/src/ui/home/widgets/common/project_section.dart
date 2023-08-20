import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
import '../../../../constants/colors.dart';
import '../../../../utils/color_utils.dart';
import '../../../widgets/project_box.dart';

class ProjectSection extends ConsumerStatefulWidget {
  const ProjectSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends ConsumerState<ProjectSection> {
  final PageController _pageController = PageController();
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        if (selectedIndex == projectName.length - 1) {
          selectedIndex = 0;
        } else {
          selectedIndex++;
        }
        _pageController.animateToPage(
          selectedIndex,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "PROJECTS",
            style: GoogleFonts.outfit(
                color: ColorUtils.getColor(
                  context,
                  textFieldTextColor,
                ),
                fontSize: 50,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
              width: 100,
              child: Divider(
                thickness: 4,
                color: primaryColor,
              )),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: size.width > 800
                        ? 700
                        : size.width > 600
                            ? 600
                            : size.width / 1.1 + (size.width < 450 ? 40 : 0),
                    width: size.width,
                    child: PageView.builder(
                      controller: _pageController,
                      pageSnapping: false,
                      allowImplicitScrolling: !(size.width > 800),
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ProjectBoxVertical(
                        imageName: 'project${index + 1}.png',
                        title: projectName[index],
                        info: projects[index],
                        projectid: index,
                      ),
                      itemCount: projects.length,
                    ),
                  ),
                  if (size.width < 800)
                    SizedBox(
                      height: 8,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                  _pageController.animateToPage(
                                    selectedIndex,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: Container(
                                  height: selectedIndex == index ? 7 : 5,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.white.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        itemCount: projectName.length,
                      ),
                    )
                ],
              ),
              if (size.width > 800)
                Positioned(
                  top: 340,
                  left: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        if (selectedIndex > 0) {
                          setState(() {
                            selectedIndex--;
                          });

                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: SvgPicture.asset(
                        'assets/project_images/ic_left.svg',
                        height: 30,
                        colorFilter: (selectedIndex != 0)
                            ? ColorFilter.mode(
                                (isDark)
                                    ? Colors.white
                                    : const Color(0xff5D5D5D),
                                BlendMode.srcIn,
                              )
                            : ColorFilter.mode(
                                ColorUtils.getColor(context, scaffoldColor),
                                BlendMode.srcIn,
                              ),
                      ),
                    ),
                  ),
                ),
              if (size.width > 800)
                Positioned(
                  top: 340,
                  right: 50,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        if (selectedIndex < projects.length - 1) {
                          setState(() {
                            selectedIndex++;
                          });

                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: SvgPicture.asset(
                        'assets/project_images/ic_right.svg',
                        height: 30,
                        colorFilter: (selectedIndex != projects.length - 1)
                            ? ColorFilter.mode(
                                (isDark)
                                    ? Colors.white
                                    : const Color(0xff5D5D5D),
                                BlendMode.srcIn,
                              )
                            : ColorFilter.mode(
                                ColorUtils.getColor(context, scaffoldColor),
                                BlendMode.srcIn,
                              ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
