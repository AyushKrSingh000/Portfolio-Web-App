import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
import '../../../../utils/hovers_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/constants.dart';
import '../../../../utils/color_utils.dart';

class AppMenuOptions extends ConsumerWidget {
  const AppMenuOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: PopupMenuButton<int>(
        icon: Icon(
          Icons.menu,
          color: ColorUtils.getColor(
            context,
            textFieldTextColor,
          ),
        ),
        itemBuilder: (context) => options
            .map((e) => PopupMenuItem(
                  value: e.keys.first,
                  child: SizedBox(
                    width: 80,
                    child: HoverBuilder(
                      builder: (isHovered) {
                        return InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            e.values.first,
                            style: GoogleFonts.outfit(
                              color: isHovered ? primaryColor : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: fontsize,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ))
            .toList(),
        offset: const Offset(0, 100),
        color: Colors.grey.shade300,
        elevation: 2,
      ),
    );
  }
}
