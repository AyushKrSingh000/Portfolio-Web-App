// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_portfolio/pages/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../controllers/hovers_controller.dart';
import '../controllers/theme_controller.dart';
import '../icons/CustomIcon.dart';
import '../widgets/skill_box.dart';

class ProjectSection extends StatefulWidget {
  int projectid;
  ProjectSection({
    Key? key,
    required this.projectid,
  }) : super(key: key);

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  final ScrollController _controller = ScrollController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  void getThemeData() async {
    final SharedPreferences prefs = await _prefs;
    if (prefs.getBool('darkmode') == null) {
      return;
    }
    setState(() {
      isDarkMode = prefs.getBool('darkmode') as bool;
    });
    changeme(isDarkMode);
  }

  void setThemeData(bool value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool('darkmode', value);
  }

  @override
  void initState() {
    super.initState();
    getThemeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor2,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: kWhiteColor,
          elevation: 0,
          leading: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                  backgroundImage:
                      ExactAssetImage('assets/project_images/photo.jpg'),
                ),
              ),
            ],
          ),
          title: Row(
            children: [
              Text(
                MediaQuery.of(context).size.width < 420
                    ? "AYUSH KR SINGH"
                    : "AYUSH KUMAR SINGH",
                style: TextStyle(color: kBlackColor),
              ),
              const SizedBox(
                width: 5,
              ),
              Transform.scale(
                scale: MediaQuery.of(context).size.width < 500 ? 0.6 : 0.9,
                child: CupertinoSwitch(
                    activeColor: kHoverColor,
                    value: isDarkMode,
                    onChanged: (value) {
                      setThemeData(value);
                      if (value) {
                        Get.changeThemeMode(ThemeMode.dark);
                        setState(() {
                          isDarkMode = true;
                        });
                      }
                      if (!value) {
                        Get.changeThemeMode(ThemeMode.light);
                        setState(() {
                          isDarkMode = false;
                        });
                      }
                      setState(() {
                        changeme(value);
                      });
                    }),
              ),
            ],
          ),
          actions: [
            MediaQuery.of(context).size.width < 750
                ? Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: PopupMenuButton<int>(
                      icon: Icon(
                        Icons.menu,
                        color: kBlacColor,
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: SizedBox(
                            width: 80,
                            child: HoverBuilder(
                              builder: (isHovered) {
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed("/");
                                  },
                                  child: Text(
                                    "HOME",
                                    style: TextStyle(
                                        color: isHovered
                                            ? kHoverColor
                                            : kBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontsize),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: SizedBox(
                            width: 80,
                            child: HoverBuilder(
                              builder: (isHovered) {
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed("/about");
                                  },
                                  child: Text(
                                    "ABOUT",
                                    style: TextStyle(
                                        color: isHovered
                                            ? kHoverColor
                                            : kBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontsize),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: SizedBox(
                            width: 80,
                            child: HoverBuilder(
                              builder: (isHovered) {
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed("/projects");
                                  },
                                  child: Text(
                                    "PROJECTS",
                                    style: TextStyle(
                                        color: isHovered
                                            ? kHoverColor
                                            : kBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontsize),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: SizedBox(
                            width: 80,
                            child: HoverBuilder(
                              builder: (isHovered) {
                                return InkWell(
                                  onTap: () {
                                    urlLauncher(resumeLink);
                                  },
                                  child: Text(
                                    "RESUME",
                                    style: TextStyle(
                                        color: isHovered
                                            ? kHoverColor
                                            : kBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontsize),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 5,
                          child: SizedBox(
                            width: 80,
                            child: HoverBuilder(
                              builder: (isHovered) {
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed("/contact");
                                  },
                                  child: Text(
                                    "CONTACT",
                                    style: TextStyle(
                                        color: isHovered
                                            ? kHoverColor
                                            : kBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontsize),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                      offset: const Offset(0, 100),
                      color: isDarkMode ? Colors.grey : Colors.grey.shade300,
                      elevation: 2,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HoverBuilder(
                        builder: (isHovered) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed("/");
                            },
                            child: Text(
                              "HOME",
                              style: TextStyle(
                                  color: isHovered ? kHoverColor : kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 18,
                      ),
                      HoverBuilder(
                        builder: (isHovered) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed("/about");
                            },
                            child: Text(
                              "ABOUT",
                              style: TextStyle(
                                  color: isHovered ? kHoverColor : kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 18,
                      ),
                      HoverBuilder(
                        builder: (isHovered) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed("/projects");
                            },
                            child: Text(
                              "PROJECTS",
                              style: TextStyle(
                                  color: isHovered ? kHoverColor : kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 18,
                      ),
                      HoverBuilder(
                        builder: (isHovered) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed("/contact");
                            },
                            child: Text(
                              "CONTACTS",
                              style: TextStyle(
                                  color: isHovered ? kHoverColor : kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 18,
                      ),
                    ],
                  ),
          ],
        ),
        body: RawScrollbar(
            thumbColor: kHoverColor,
            radius: const Radius.circular(20),
            controller: _controller,
            thickness: 10,
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  Container(
                    color: backgroundColor1,
                    height: 430,
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              projectName[widget.projectid],
                              style: TextStyle(
                                  color: kBlacColor,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                                width: 50,
                                child: Divider(
                                  thickness: 4,
                                  color: kHoverColor,
                                )),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: Text(
                                "This page contains the case study of ${projectName[widget.projectid]} which includes the Project Overview, Tools Used and Links to the official product.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: kBlackColor,
                                  fontSize: 18,
                                  height: 1.2,
                                  wordSpacing: 2,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(250, 60)),
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Colors.amber,
                                          content: Text(
                                            'Project Link Will Be Added Soon...',
                                            style: TextStyle(
                                              color: kBlackColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )));
                                },
                                child: Text(
                                  "Project Link",
                                  style: TextStyle(
                                      color: kBlackColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width < 570
                        ? (MediaQuery.of(context).size.width < 400
                            ? 1850
                            : 1750)
                        : 1420,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Image(
                          height: 300,
                          // width: MediaQuery.of(context).size.width ,
                          image: AssetImage(
                              'assets/project_images/${image[widget.projectid]}'),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width < 750
                              ? MediaQuery.of(context).size.width / 1.2
                              : MediaQuery.of(context).size.width / 1.6,
                          child: Column(
                            crossAxisAlignment:
                                MediaQuery.of(context).size.width < 750
                                    ? CrossAxisAlignment.center
                                    : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Project Overview',
                                style: TextStyle(
                                    color: kBlacColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                content[widget.projectid],
                                style: TextStyle(
                                  color: kBlackColor,
                                  fontSize: 18,
                                  height: 1.5,
                                  wordSpacing: 2,
                                ),
                                textAlign:
                                    MediaQuery.of(context).size.width < 750
                                        ? TextAlign.center
                                        : TextAlign.start,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Tech Used',
                                style: TextStyle(
                                    color: kBlacColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width < 436
                                          ? 250
                                          : 150,
                                  child: GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: tech[widget.projectid]!.length,
                                    itemBuilder: ((context, index) {
                                      return SkillBox(
                                        url:
                                            techLinks[widget.projectid]![index],
                                        skillName:
                                            tech[widget.projectid]![index],
                                        imageName:
                                            tech[widget.projectid]![index]
                                                .toLowerCase(),
                                      );
                                    }),
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 177,
                                            childAspectRatio: 6 / 2,
                                            crossAxisSpacing: 5,
                                            mainAxisSpacing: 5),
                                  )),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Links',
                                style: TextStyle(
                                    color: kBlacColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Flex(
                                mainAxisAlignment:
                                    MediaQuery.of(context).size.width < 750
                                        ? MainAxisAlignment.center
                                        : MainAxisAlignment.start,
                                direction:
                                    MediaQuery.of(context).size.width < 500
                                        ? Axis.vertical
                                        : Axis.horizontal,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(200, 60)),
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.amber,
                                                content: Text(
                                                  'Project Link Will Be Added Soon...',
                                                  style: TextStyle(
                                                    color: kBlackColor,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )));
                                      },
                                      child: Text(
                                        "Project Link",
                                        style: TextStyle(
                                            color: kBlackColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const SizedBox(
                                    width: 30,
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              width: 2, color: kHoverColor),
                                          backgroundColor: Colors.white,
                                          minimumSize: const Size(200, 60)),
                                      onPressed: () {
                                        Get.toNamed('/');
                                      },
                                      child: Text(
                                        "Go Back",
                                        style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),

                  //Bottom Section
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
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "AYUSH KUMAR SINGH",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: const Text(
                                        "A Full Stack App Developer building  andriod, ios applications that leads to the success of the overall product",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Text(
                                        "  SOCIAL",
                                        style: TextStyle(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                          Colors.amber,
                                                      content: Text(
                                                        'Gmail Id : ayushkumarsingh0708@gmail.com',
                                                        style: TextStyle(
                                                          color: kBlackColor,
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
                                padding:
                                    const EdgeInsets.fromLTRB(40, 40, 40, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "AYUSH KUMAR SINGH",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.5,
                                          child: const Text(
                                            "A Full Stack App Developer building  andriod, ios applications that leads to the success of the overall product",
                                            // textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text(
                                            "SOCIAL",
                                            style: TextStyle(
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
                                                            Colors.amber,
                                                        content: Text(
                                                          'Gmail Id : ayushkumarsingh0708@gmail.com',
                                                          style: TextStyle(
                                                            color: kBlackColor,
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
                        const Text(
                          '© Copyright 2022. Made by Ayush Kumar Singh',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
