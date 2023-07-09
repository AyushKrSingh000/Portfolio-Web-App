import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/color_utils.dart';
import '../web/widgets.dart';

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
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: width / 2 - 150,
          top: 180,
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
            height: 200,
            width: 200,
          ),
        ),
        Positioned(
          top: 80,
          child: Lottie.asset(
            'assets/lottie/home.json',
            height: 600,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Positioned(
          top: 20,
          child: Column(
            children: [
              Text(
                'Development',
                style: GoogleFonts.poppins(
                  fontSize: 50,
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
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: ColorUtils.getColor(
                    context,
                    secondaryTextColor,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
