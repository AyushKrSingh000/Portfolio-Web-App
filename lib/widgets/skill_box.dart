// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants.dart';

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
      height: 50,
      width: 100,
      child: InkWell(
        child: Card(
          elevation: 0.1,
          color: kGreyColor.shade300,
          child: InkWell(
            hoverColor: Colors.amber.shade300,
            onTap: () {
              urlLauncher(url);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    style: const TextStyle(color: kBlackColor, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
