// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/routing/router.dart';

import '../controllers/theme_controller.dart';

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
                  color: kBlacColor, fontSize: 30, fontWeight: FontWeight.bold),
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
                  color: kBlackColor,
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
                      color: kBlackColor,
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
    return SizedBox(
      child: Column(children: [
        Image(
          height: MediaQuery.of(context).size.width / 2.2,
          width: MediaQuery.of(context).size.width / 1.2,
          image: AssetImage('assets/project_images/$imageName'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.outfit(
                  color: kBlacColor, fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Text(
                info,
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: kBlackColor,
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
                      color: kBlackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ],
        )
      ]),
    );
  }
}
