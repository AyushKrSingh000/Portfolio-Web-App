import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/constants/constants.dart';
import 'package:my_portfolio/src/utils/color_utils.dart';

import '../../../../../constants.dart';
import '../../../../../controllers/hovers_controller.dart';

class WebAppMenuOptions extends ConsumerWidget {
  const WebAppMenuOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: webOptions
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: HoverBuilder(
                    builder: (isHovered) {
                      return InkWell(
                        onTap: () {
                          // _controller.animateTo(
                          //   0,
                          //   duration: const Duration(seconds: 1),
                          //   curve: Curves.fastOutSlowIn,
                          // );
                        },
                        child: Text(
                          e.values.first.toUpperCase(),
                          style: GoogleFonts.outfit(
                            color: isHovered
                                ? primaryColor
                                : ColorUtils.getColor(
                                    context,
                                    textFieldTextColor,
                                  ),
                            fontWeight: FontWeight.bold,
                            fontSize: fontsize,
                          ),
                        ),
                      );
                    },
                  ),
                ))
            .toList());
  }
}
