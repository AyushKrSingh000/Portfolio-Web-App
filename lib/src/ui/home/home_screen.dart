// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/src/constants/icons/CustomIcon.dart';
import 'package:my_portfolio/src/ui/home/widgets/common/contact_us_Section.dart';
import 'package:my_portfolio/src/ui/home/widgets/common/project_section.dart';

import '../../constants/colors.dart';
import '../../utils/color_utils.dart';

import 'widgets/app/widgets.dart';
import 'widgets/common/about_section.dart';
import 'widgets/common/widgets.dart';
import 'widgets/web/widgets.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _controller = ScrollController();
  double pixels = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: ColorUtils.getColor(
          context,
          scaffoldColor,
        ),
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: ColorUtils.getColor(
            context,
            scaffoldColor,
          ).withOpacity(0.8),
          elevation: 0,
          leading: Lottie.asset(
            'assets/lottie/name.json',
          ),
          title: const AppBarTitle(),
          actions: [
            MediaQuery.of(context).size.width < 750
                ? const AppMenuOptions()
                : const WebAppMenuOptions(),
          ],
        ),
        body: RawScrollbar(
          thumbColor: primaryColor,
          radius: const Radius.circular(20),
          controller: _controller,
          thickness: 10,
          child: SingleChildScrollView(
            controller: _controller,
            physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast,
              parent: ClampingScrollPhysics(),
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                const HomeSection(),
                const AboutSection(),
                const ProjectSection(),
                const SizedBox(height: 60),
                const ContactUsSection(),
                //Bottom Sections
                Container(
                  color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
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
                                                    backgroundColor:
                                                        primaryColor,
                                                    content: Text(
                                                      'Gmail Id : ayushkumarsingh0708@gmail.com',
                                                      style: GoogleFonts.outfit(
                                                        color:
                                                            ColorUtils.getColor(
                                                          context,
                                                          textFieldTextColor,
                                                        ),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
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
                                        padding:
                                            const EdgeInsets.only(right: 20),
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
                                              showDuration:
                                                  Duration(microseconds: 5),
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
                                              showDuration:
                                                  Duration(microseconds: 5),
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
                                                      backgroundColor:
                                                          primaryColor,
                                                      content: Text(
                                                        'Gmail Id : ayushkumarsingh0708@gmail.com',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: ColorUtils
                                                              .getColor(
                                                            context,
                                                            textFieldTextColor,
                                                          ),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      )));
                                            },
                                            child: const Tooltip(
                                              showDuration:
                                                  Duration(microseconds: 5),
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
                                              showDuration:
                                                  Duration(microseconds: 5),
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
                        '© Copyright 2022. Made by Ayush Kumar Singh',
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
