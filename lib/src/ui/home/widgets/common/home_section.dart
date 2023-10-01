import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/color_utils.dart';

class HomeSection extends ConsumerStatefulWidget {
  const HomeSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeSectionState();
}

class _HomeSectionState extends ConsumerState<HomeSection> {
  @override
  Widget build(BuildContext context) {
    // _addPoints();
    final width = MediaQuery.sizeOf(context).width;
    return Flex(
      direction: width < 600 ? Axis.vertical : Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: width < 600 ? width : width / 3,
            child: Column(
              crossAxisAlignment: width < 600
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'App Developer',
                  style: GoogleFonts.poppins(
                    fontSize: width < 900
                        ? width < 700
                            ? 25
                            : 30
                        : 40,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.getColor(
                      context,
                      prmaryTextColor,
                    ),
                  ),
                ),
                Text(
                  'I want to learn more!',
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: ColorUtils.getColor(
                      context,
                      secondaryTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: width < 600 ? width : width / 1.5,
          child: FittedBox(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 140,
                  left: width < 650 ? 50 : 100,
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 100,
                          color: Colors.red,
                          offset: Offset(
                            150,
                            0,
                          ),
                        ),
                        BoxShadow(
                          blurRadius: 100,
                          color: Colors.blue,
                          offset: Offset(
                            150,
                            150,
                          ),
                        ),
                        BoxShadow(
                          blurRadius: 100,
                          color: Colors.red,
                          offset: Offset(
                            0,
                            150,
                          ),
                        ),
                        BoxShadow(
                          blurRadius: 100,
                          color: Colors.blue,
                          offset: Offset(
                            0,
                            0,
                          ),
                        ),
                      ],
                    ),
                    height: width < 650 ? 150 : 200,
                    width: width < 650 ? 150 : 200,
                  ),
                ),
                Lottie.asset(
                  'assets/lottie/home.json',
                  height: width < 600 ? 400 : 600,
                  width: width < 700 ? width / 1.5 : width / 2,
                ),
                // Positioned(
                //   top: 20,
                //   child:
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
