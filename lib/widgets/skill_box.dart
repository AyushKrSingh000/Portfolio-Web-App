import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class SkillBox extends StatelessWidget {
  String skillName;
  SkillBox({super.key, required this.skillName});

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
