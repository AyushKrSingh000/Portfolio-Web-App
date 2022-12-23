import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/icons/CustomIcon.dart';
import 'package:my_portfolio/widgets/project_box.dart';
import 'package:my_portfolio/widgets/skill_box.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/hovers_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void urlLauncher(String url) async {
    //  const url = 'https:/github.com/AyushKrSingh000';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  final _formKey = GlobalKey<FormState>();
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
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
              ),
            ),
          ],
        ),
        title: const Text(
          "AYUSH KUMAR SINGH",
          style: TextStyle(color: kBlackColor),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              HoverBuilder(
                builder: (isHovered) {
                  return InkWell(
                    onTap: () {
                      _controller.animateTo(
                        0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
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
                      _controller.animateTo(
                        600,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
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
                      _controller.animateTo(
                        1600,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
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
                      _controller.animateTo(
                        1600 + MediaQuery.of(context).size.width * 1.6,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
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
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            //Home Section
            Container(
              color: const Color.fromRGBO(244, 244, 244, 1),
              height: 600,
              child: Row(children: [
                Card(
                  color: Colors.white,
                  elevation: 20,
                  child: SizedBox(
                    height: 200,
                    width: 45,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              hoverColor: Colors.amber.withOpacity(0.5),
                              onTap: () {
                                urlLauncher(
                                    'https:/github.com/AyushKrSingh000');
                              },
                              child: const SizedBox(
                                  height: 50,
                                  width: 45,
                                  child: Icon(MyIcon.github))),
                          InkWell(
                              hoverColor: Colors.amber.withOpacity(0.5),
                              onTap: () {
                                urlLauncher(
                                    'https://www.linkedin.com/in/ayush-kumar-singh-9ab626216/');
                              },
                              child: const SizedBox(
                                  height: 50,
                                  width: 45,
                                  child: Icon(MyIcon.linkedin))),
                          InkWell(
                              hoverColor: Colors.amber.withOpacity(0.5),
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                        backgroundColor: Colors.amber,
                                        content: Text(
                                          'Gmail Id : ayushkumarsingh0708@gmail.com',
                                          style: TextStyle(
                                            color: kBlackColor,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )));
                              },
                              child: const SizedBox(
                                  height: 50,
                                  width: 45,
                                  child: Icon(MyIcon.gmail))),
                          InkWell(
                              hoverColor: Colors.amber.withOpacity(0.5),
                              onTap: () {
                                urlLauncher(
                                    'https://www.instagram.com/ayush_kr.singh/');
                              },
                              child: const SizedBox(
                                  height: 50,
                                  width: 45,
                                  child: Icon(MyIcon.instagram_square))),
                        ]),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Hello Hi there!',
                              textStyle: const TextStyle(
                                  color: kBlacColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              speed: const Duration(milliseconds: 110),
                            ),
                            TypewriterAnimatedText(
                              "I'M AYUSH KUMAR SINGH",
                              textStyle: const TextStyle(
                                  color: kBlacColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              speed: const Duration(milliseconds: 110),
                            ),
                            TypewriterAnimatedText(
                              'A PASSIONATE APP DEVELOPER FROM INDIA',
                              textStyle: const TextStyle(
                                  color: kBlacColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              speed: const Duration(milliseconds: 110),
                            ),
                            TypewriterAnimatedText(
                              'I LOVE CODING',
                              textStyle: const TextStyle(
                                  color: kBlacColor,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              speed: const Duration(milliseconds: 110),
                            ),
                            TypewriterAnimatedText('AND DEVELOPING APPS',
                                textStyle: const TextStyle(
                                    color: kBlacColor,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                speed: const Duration(milliseconds: 110),
                                cursor: '!'),
                          ],
                          repeatForever: true,
                          pause: const Duration(milliseconds: 2700),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                        const SizedBox(
                            width: 50,
                            child: Divider(
                              thickness: 4,
                              color: kHoverColor,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: const Text(
                            "A Full Stack App Developer building  andriod, ios applications that leads to the success of the overall product",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: 18,
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
                              _controller.animateTo(
                                1600,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastOutSlowIn,
                              );
                            },
                            child: const Text(
                              "PROJECTS",
                              style: TextStyle(
                                  color: kBlackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )),
              ]),
            ),
            //About Section
            SizedBox(
              height: 1000,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "ABOUT ME!",
                    style: TextStyle(
                        color: kBlacColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                      width: 50,
                      child: Divider(
                        thickness: 4,
                        color: kHoverColor,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: const Text(
                      "Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Get to know me!",
                                  style: TextStyle(
                                      color: kBlacColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  child: const Text(
                                    "Hi there! I am a second-year student currently pursuing a degree in Computer Science. I am an aspiring app developer with a passion for creating intuitive and user-friendly mobile experiences. In my free time, I love to code and experiment with new technologies.\n \nI am also a proud winner of the Smart India Hackathon , where I had the opportunity to showcase my skills and develop innovative solutions to real-world problems. I am excited to continue learning and growing as a developer, and I am always open to new opportunities and challenges.",
                                    style: TextStyle(
                                      color: kBlackColor,
                                      fontSize: 18,
                                      height: 1.5,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(250, 60)),
                                    onPressed: () {},
                                    child: const Text(
                                      "CONTACT",
                                      style: TextStyle(
                                          color: kBlackColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 0, 30),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "My Skills",
                                style: TextStyle(
                                    color: kBlacColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                // textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                  height: 300,
                                  child: GridView.builder(
                                    itemCount: skills.length,
                                    itemBuilder: ((context, index) {
                                      return SkillBox(skillName: skills[index]);
                                    }),
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 130,
                                            childAspectRatio: 5 / 2,
                                            crossAxisSpacing: 5,
                                            mainAxisSpacing: 5),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //Project Section
            Container(
              color: const Color.fromRGBO(244, 244, 244, 1),
              height: MediaQuery.of(context).size.width * 1.6,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "PROJECTS",
                        style: TextStyle(
                            color: kBlacColor,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                          width: 50,
                          child: Divider(
                            thickness: 4,
                            color: kHoverColor,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: const Text(
                          "Here you will find some of the projects that I created with each project containing its own case study",
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
                      ProjectBoxHorizontal(
                          imageName: 'docs2.png',
                          title: "Google Docs Clone",
                          info: projects[0]),
                      const SizedBox(
                        height: 20,
                      ),
                      ProjectBoxHorizontal(
                          imageName: 'vriddhi2.png',
                          title: "Vriddhi SIH",
                          info: projects[1]),
                      const SizedBox(
                        height: 20,
                      ),
                      ProjectBoxHorizontal(
                          imageName: 'expense2.png',
                          title: "Expense Tracker App",
                          info: projects[2]),
                      const SizedBox(
                        height: 20,
                      ),
                      ProjectBoxHorizontal(
                          imageName: 'event2.png',
                          title: "Event Invite System",
                          info: projects[3]),
                    ],
                  )),
            ),
            //Contact Us
            SizedBox(
              height: 950,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "CONTACT",
                        style: TextStyle(
                            color: kBlacColor,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                          width: 50,
                          child: Divider(
                            thickness: 4,
                            color: kHoverColor,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: const Text(
                          "Feel free to Contact me by submitting the form below and I will get back to you as soon as possible",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 5,
                          child: SizedBox(
                            width: 900,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Name',
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter Your Name";
                                          }
                                          return null;
                                        },
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            prefixIcon:
                                                const Icon(Icons.person),
                                            hintText: 'Name',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  color: Colors.grey.shade300),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  color: Colors.grey.shade300),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      const Text(
                                        'Email',
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter Your Email";
                                          }
                                          return null;
                                        },
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            prefixIcon: const Icon(Icons.email),
                                            hintText: 'Email',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  color: Colors.grey.shade300),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  color: Colors.grey.shade300),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      const Text(
                                        'Message',
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Write Some Message";
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 10,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            hintText: 'Message',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  color: Colors.grey.shade300),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  color: Colors.grey.shade300),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                minimumSize:
                                                    const Size(200, 60)),
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      backgroundColor:
                                                          Colors.amber,
                                                      content: Text(
                                                        'Thanks For Contacting. Will will get to you very soon',
                                                        style: TextStyle(
                                                          color: kWhiteColor,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      )),
                                                );
                                              }
                                            },
                                            child: const Text(
                                              "SUBMIT",
                                              style: TextStyle(
                                                  color: kBlackColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Container(
              color: kBlacColor,
              height: 350,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "AYUSH KUMAR SINGH",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: const Text(
                                "A Full Stack App Developer building  andriod, ios applications that leads to the success of the overall product",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "SOCIAL",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
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
                                  child: const SizedBox(
                                      height: 50,
                                      width: 45,
                                      child: Icon(
                                        MyIcon.github,
                                        color: kWhiteColor,
                                      ))),
                              InkWell(
                                  onTap: () {
                                    urlLauncher(
                                        'https://www.linkedin.com/in/ayush-kumar-singh-9ab626216/');
                                  },
                                  child: const SizedBox(
                                      height: 50,
                                      width: 45,
                                      child: Icon(
                                        MyIcon.linkedin,
                                        color: kWhiteColor,
                                      ))),
                              InkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                            backgroundColor: Colors.amber,
                                            content: Text(
                                              'Gmail Id : ayushkumarsingh0708@gmail.com',
                                              style: TextStyle(
                                                color: kBlackColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )));
                                  },
                                  child: const SizedBox(
                                      height: 50,
                                      width: 45,
                                      child: Icon(
                                        MyIcon.gmail,
                                        color: kWhiteColor,
                                      ))),
                              InkWell(
                                  onTap: () {
                                    urlLauncher(
                                        'https://www.instagram.com/ayush_kr.singh/');
                                  },
                                  child: const SizedBox(
                                      height: 50,
                                      width: 45,
                                      child: Icon(
                                        MyIcon.instagram_square,
                                        color: kWhiteColor,
                                      ))),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 30, 40, 10),
                    // width: 1000,
                    child: Divider(
                      // height: 15,
                      thickness: 0.5,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '© Copyright 2022. Made by Ayush Kumar Singh',
                    style: TextStyle(color: kWhiteColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
