// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              style: TextStyle(
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
                style: TextStyle(
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
                  if (projectid == 0) {
                    Get.toNamed('/project1');
                  }
                  if (projectid == 1) {
                    Get.toNamed('/project2');
                  }
                  if (projectid == 2) {
                    Get.toNamed('/project3');
                  }
                  if (projectid == 3) {
                    Get.toNamed('/project4');
                  }
                },
                child: Text(
                  "CASE STUDY",
                  style: TextStyle(
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
              style: TextStyle(
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
                style: TextStyle(
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
                  if (projectid == 0) {
                    Get.toNamed('/project1');
                  }
                  if (projectid == 1) {
                    Get.toNamed('/project2');
                  }
                  if (projectid == 2) {
                    Get.toNamed('/project3');
                  }
                  if (projectid == 3) {
                    Get.toNamed('/project4');
                  }
                  // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  //     duration: Duration(seconds: 1),
                  //     backgroundColor: Colors.amber,
                  //     content: Text(
                  //       'Case Study Will Be Added Soon...',
                  //       style: TextStyle(
                  //         color: kBlackColor,
                  //         fontSize: 15,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     )));
                },
                child: Text(
                  "CASE STUDY",
                  style: TextStyle(
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
