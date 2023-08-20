import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/src/utils/dialog_utils.dart';

import '../../../../utils/color_utils.dart';
import '../../../widgets/gradient_text.dart';

class TechStackSection extends ConsumerWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
      child: Row(
        mainAxisAlignment: width > 600
            ? MainAxisAlignment.spaceAround
            : MainAxisAlignment.center,
        children: [
          if (width > 600)
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    color: Colors.red,
                    offset: Offset(
                      40,
                      00,
                    ),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/project_images/ic_tech.png',
                fit: BoxFit.fill,
                width: width / 2 - 80,
                height: width / ((width > 600) ? 1.8 : .85),
              ),
            ),

          Container(
            height: width / ((width > 600) ? 1.8 : .85),
            width: width > 600 ? width / 2 - 80 : width / 1.3,
            decoration: BoxDecoration(
              color: const Color(0xff161617),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 100,
                  color: Colors.blue,
                  offset: Offset(
                    -20,
                    00,
                  ),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: GradientText(
                      'Technology\nStack',
                      style: GoogleFonts.homenaje(
                        fontSize: 85,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.blue,
                          Colors.red,
                          Colors.red,
                          Colors.red,
                        ],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Building and transforming\ndigital products with a range\nof technologies.',
                      maxLines: 3,
                      style: GoogleFonts.notoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff838388),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xff838388),
                      ),
                      backgroundColor: const Color(0xff161617),
                    ),
                    onPressed: () {
                      _showSkillsBottomSheet(context);
                    },
                    child: Text(
                      "Read More",
                      style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          )
          // Text(
          //   "My Skills",
          //   style: GoogleFonts.outfit(
          //       color: ColorUtils.getColor(
          //         context,
          //         textFieldTextColor,
          //       ),
          //       fontSize: 35,
          //       fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.center,
          // ),
          // const SizedBox(
          //   height: 40,
          // ),
          //
        ],
      ),
    );
  }
}

showSkillDialog(BuildContext context) {
  return showPortfolioBottomSheet(
    context: context,
    builder: (context) => Text('Hi AYush'),
  );
}

_showSkillsBottomSheet(BuildContext context) {
  return showPortfolioBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => const SkillBottomSheet(),
  );
}

class SkillBottomSheet extends ConsumerStatefulWidget {
  const SkillBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SkillBottomSheetState();
}

class _SkillBottomSheetState extends ConsumerState<SkillBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            runSpacing: 10,
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: skills
                .map(
                  (e) => GestureDetector(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.getColor(
                            context,
                            const AppCustomColor(
                              lightThemeColor: Colors.white,
                              darkThemeColor: Color(0xff181818),
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: ColorUtils.getColor(
                              context,
                              AppCustomColor(
                                darkThemeColor: Colors.white.withOpacity(0.6),
                                lightThemeColor: const Color(0xff181818),
                              ),
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/skills/$e.png',
                                height: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                e,
                                style: GoogleFonts.outfit(
                                  fontSize: 16,
                                  color: ColorUtils.getColor(
                                    context,
                                    AppCustomColor(
                                      darkThemeColor:
                                          Colors.white.withOpacity(0.6),
                                      lightThemeColor: Colors.black,
                                    ),
                                  ),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
