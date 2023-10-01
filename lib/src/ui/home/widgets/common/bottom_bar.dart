import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons/CustomIcon.dart';
import '../../../../utils/color_utils.dart';

class WebsiteFooter extends ConsumerStatefulWidget {
  const WebsiteFooter({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebsiteFooterState();
}

class _WebsiteFooterState extends ConsumerState<WebsiteFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff181818),
      height: MediaQuery.of(context).size.width < 650 ? 300 : 250,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 20,
          ),
          MediaQuery.of(context).size.width < 650
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "AYUSH KUMAR SINGH",
                        style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Text(
                          "A Full Stack App Developer building  andriod, ios applications that leads to the success of the overall product",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "  SOCIAL",
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                urlLauncher(
                                    'https://github.com/AyushKrSingh000');
                              },
                              child: const SizedBox(
                                  // height: 50,
                                  width: 45,
                                  child: Icon(
                                    MyIcon.github,
                                    color: Colors.white,
                                  ))),
                          InkWell(
                              onTap: () {
                                urlLauncher(
                                    'https://www.linkedin.com/in/ayush-kumar-singh-9ab626216/');
                              },
                              child: const SizedBox(
                                  // height: 50,
                                  width: 45,
                                  child: Icon(
                                    MyIcon.linkedin,
                                    color: Colors.white,
                                  ))),
                          InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
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
                              child: const SizedBox(
                                  // height: 50,
                                  width: 45,
                                  child: Icon(
                                    MyIcon.gmail,
                                    color: Colors.white,
                                  ))),
                          InkWell(
                              onTap: () {
                                urlLauncher(
                                    'https://www.instagram.com/ayush_kr.singh/');
                              },
                              child: const SizedBox(
                                  // height: 50,
                                  width: 45,
                                  child: Icon(
                                    MyIcon.instagram_square,
                                    color: Colors.white,
                                  ))),
                        ],
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AYUSH KUMAR SINGH",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Text(
                              "A Full Stack App Developer building  andriod, ios applications that leads to the success of the overall product",
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              "SOCIAL",
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(children: [
                            InkWell(
                                onTap: () {
                                  urlLauncher(
                                      'https:/github.com/AyushKrSingh000');
                                },
                                child: const Tooltip(
                                  showDuration: Duration(microseconds: 5),
                                  message: 'Github',
                                  child: SizedBox(
                                      // height: 50,
                                      width: 45,
                                      child: Icon(
                                        MyIcon.github,
                                        color: Colors.white,
                                      )),
                                )),
                            InkWell(
                                onTap: () {
                                  urlLauncher(
                                      'https://www.linkedin.com/in/ayush-kumar-singh-9ab626216/');
                                },
                                child: const Tooltip(
                                  showDuration: Duration(microseconds: 5),
                                  message: 'Linkedin',
                                  child: SizedBox(
                                      width: 45,
                                      child: Icon(
                                        MyIcon.linkedin,
                                        color: Colors.white,
                                      )),
                                )),
                            InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
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
                                  child: SizedBox(
                                      width: 45,
                                      child: Icon(
                                        MyIcon.gmail,
                                        color: Colors.white,
                                      )),
                                )),
                            InkWell(
                                onTap: () {
                                  urlLauncher(
                                      'https://www.instagram.com/ayush_kr.singh/');
                                },
                                child: const Tooltip(
                                  showDuration: Duration(microseconds: 5),
                                  message: 'Instagram',
                                  child: SizedBox(
                                      width: 45,
                                      child: Icon(
                                        MyIcon.instagram_square,
                                        color: Colors.white,
                                      )),
                                )),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
          ),
          Text(
            '© Copyright 2023. Made by Ayush Kumar Singh',
            style: GoogleFonts.outfit(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
