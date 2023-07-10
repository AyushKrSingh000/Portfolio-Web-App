import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
import '../../../../constants/icons/CustomIcon.dart';
import '../../../../constants/colors.dart';
import '../../../../utils/color_utils.dart';

class ContactCard extends ConsumerWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: ColorUtils.getColor(
        context,
        textFieldBgColor,
      ),
      elevation: 20,
      shadowColor: primaryColor,
      child: SizedBox(
        height: 250,
        width: 45,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          InkWell(
              hoverColor: primaryColor.withOpacity(0.5),
              onTap: () {
                urlLauncher(resumeLink);
              },
              child: const Tooltip(
                showDuration: Duration(microseconds: 5),
                message: 'Resume',
                child: SizedBox(
                    height: 50, width: 45, child: Icon(Icons.file_copy)),
              )),
          InkWell(
              hoverColor: primaryColor.withOpacity(0.5),
              onTap: () {
                urlLauncher('https://github.com/AyushKrSingh000');
              },
              child: const Tooltip(
                showDuration: Duration(microseconds: 5),
                message: 'Github',
                child:
                    SizedBox(height: 50, width: 45, child: Icon(MyIcon.github)),
              )),
          InkWell(
              hoverColor: primaryColor.withOpacity(0.5),
              onTap: () {
                urlLauncher(
                    'https://www.linkedin.com/in/ayush-kumar-singh-9ab626216/');
              },
              child: const Tooltip(
                showDuration: Duration(microseconds: 5),
                message: 'Linkedin',
                child: SizedBox(
                    height: 50, width: 45, child: Icon(MyIcon.linkedin)),
              )),
          InkWell(
              hoverColor: primaryColor.withOpacity(0.5),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: primaryColor,
                    content: Text(
                      'Gmail Id : ayushkumarsingh0708@gmail.com',
                      style: GoogleFonts.outfit(
                        color: ColorUtils.getColor(
                          context,
                          textFieldTextColor,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )));
              },
              child: const Tooltip(
                showDuration: Duration(microseconds: 5),
                message: 'Gmail',
                child:
                    SizedBox(height: 50, width: 45, child: Icon(MyIcon.gmail)),
              )),
          InkWell(
              hoverColor: primaryColor.withOpacity(0.5),
              onTap: () {
                urlLauncher('https://www.instagram.com/ayush_kr.singh/');
              },
              child: const Tooltip(
                showDuration: Duration(microseconds: 5),
                message: 'Instagram',
                child: SizedBox(
                    height: 50,
                    width: 45,
                    child: Icon(MyIcon.instagram_square)),
              )),
        ]),
      ),
    );
  }
}
