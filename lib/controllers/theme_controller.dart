import 'package:flutter/material.dart';

Color kWhiteColor = Colors.white;
Color kBlackColor = const Color.fromARGB(255, 50, 48, 48);
Color kHoverColor = Colors.amber;

Color textbox = Colors.grey.shade200;
Color contactCard = Colors.white;
Color kBlacColor = Colors.black;
Color backgroundColor1 = const Color.fromRGBO(244, 244, 244, 1);
Color kGreyColor = Colors.grey.shade400;
Color backgroundColor2 = const Color.fromRGBO(236, 236, 236, 1);
void changeme(bool value) {
  if (!value) {
    kWhiteColor = Colors.white;
    kBlacColor = Colors.black;

    contactCard = Colors.white;
    textbox = Colors.grey.shade200;
    kGreyColor = Colors.grey.shade400;
    kBlackColor = const Color.fromARGB(255, 50, 48, 48);
    backgroundColor1 = const Color.fromRGBO(244, 244, 244, 1);
    backgroundColor2 = const Color.fromRGBO(236, 236, 236, 1);
  }
  if (value) {
    kWhiteColor = Colors.black.withOpacity(0.5);
    kBlackColor = Colors.white;
    contactCard = const Color.fromARGB(255, 102, 102, 102);
    backgroundColor1 = const Color.fromARGB(255, 50, 48, 48);
    kBlacColor = Colors.white;
    kGreyColor = Colors.white10;
    textbox = Colors.grey.shade400;
    backgroundColor2 = const Color.fromARGB(255, 57, 56, 56);
  }
}
