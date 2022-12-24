// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants.dart';

class ProjectBoxHorizontal extends StatelessWidget {
  String imageName;
  String title;
  String info;
  ProjectBoxHorizontal(
      {super.key,
      required this.imageName,
      required this.title,
      required this.info});

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
              style: const TextStyle(
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
                style: const TextStyle(
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
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.amber,
                      content: Text(
                        'Case Study Will Be Added Soon...',
                        style: TextStyle(
                          color: kBlackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )));
                },
                child: const Text(
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
  ProjectBoxVertical(
      {super.key,
      required this.imageName,
      required this.title,
      required this.info});

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
              style: const TextStyle(
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
                style: const TextStyle(
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
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.amber,
                      content: Text(
                        'Case Study Will Be Added Soon...',
                        style: TextStyle(
                          color: kBlackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )));
                },
                child: const Text(
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
