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
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
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
            height: 30,
          ),
          Stack(
            children: [
              SizedBox(
                height: 800,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: _pageController,
                  pageSnapping: false,
                  allowImplicitScrolling: false,
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
                              (isDark) ? Colors.white : const Color(0xff5D5D5D),
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
                              (isDark) ? Colors.white : const Color(0xff5D5D5D),
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
