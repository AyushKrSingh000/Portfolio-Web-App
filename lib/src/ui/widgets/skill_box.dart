// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../utils/color_utils.dart';

class SkillBox extends StatelessWidget {
  String skillName;
  String imageName;
  String url;
  SkillBox({
    Key? key,
    required this.skillName,
    required this.imageName,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 0.1,
        color: Colors.black,
        child: Row(
          children: [
            Image.asset(
              'assets/skills/$imageName.png',
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 90,
              child: Text(
                skillName,
                style: GoogleFonts.outfit(
                    color: ColorUtils.getColor(
                      context,
                      textFieldTextColor,
                    ),
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
