// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants.dart';

class SkillBox extends StatelessWidget {
  String skillName;
  SkillBox({
    Key? key,
    required this.skillName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: Card(
        elevation: 0.1,
        color: kGreyColor.shade300,
        child: Center(
          child: Text(
            skillName,
            style: const TextStyle(color: kBlackColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
