// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/routing/router.dart';

import '../../constants/colors.dart';
import '../../utils/color_utils.dart';

class ProjectBoxHorizontal extends StatelessWidget {
  String imageName;
  String title;
  String info;
  int projectid;
  ProjectBoxHorizontal(
      {super.key,
      required this.imageName,
      required this.title,
      required this.info,
      required this.projectid});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Image(
          height: MediaQuery.of(context).size.width / 3.2,
          width: MediaQuery.of(context).size.width / 2.2,
          image: AssetImage('assets/project_images/$imageName'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.outfit(
                  color: ColorUtils.getColor(
                    context,
                    textFieldTextColor,
                  ),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Text(
                info,
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: ColorUtils.getColor(
                    context,
                    textFieldTextColor,
                  ),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 60)),
                onPressed: () {
                  context.navigateTo(ProjectRoute(projectid: projectid));
                },
                child: Text(
                  "CASE STUDY",
                  style: GoogleFonts.outfit(
                      color: ColorUtils.getColor(
                        context,
                        textFieldTextColor,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ],
        )
      ]),
    );
  }
}

class ProjectBoxVertical extends StatelessWidget {
  String imageName;
  String title;
  String info;
  int projectid;
  ProjectBoxVertical(
      {super.key,
      required this.imageName,
      required this.title,
      required this.info,
      required this.projectid});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: size.width / 7,
              width: size.width / 3.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    color: primaryColor.withOpacity(0.6),
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Image(
              height: size.width / 4,
              width: size.width / 2,
              image: AssetImage('assets/project_images/$imageName'),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.outfit(
                  color: ColorUtils.getColor(
                    context,
                    prmaryTextColor,
                  ),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width / 1.2,
              child: Text(
                info,
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                  color: ColorUtils.getColor(
                    context,
                    textFieldTextColor,
                  ),
                  fontSize: size.width < 600 ? 14 : 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(size.width < 600 ? 180 : 200,
                      size.width < 600 ? 50 : 60)),
              onPressed: () {
                // context.navigateTo(ProjectRoute(projectid: projectid));
              },
              child: Text(
                "CASE STUDY",
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: size.width < 600 ? 14 : 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
