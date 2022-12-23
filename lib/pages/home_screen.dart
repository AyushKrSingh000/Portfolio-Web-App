import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/skill_box.dart';

import '../controllers/hovers_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(244, 244, 244, 1),
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
                  return Text(
                    "HOME",
                    style: TextStyle(
                        color: isHovered ? kHoverColor : kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: fontsize),
                  );
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 18,
              ),
              HoverBuilder(
                builder: (isHovered) {
                  return Text(
                    "ABOUT",
                    style: TextStyle(
                        color: isHovered ? kHoverColor : kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: fontsize),
                  );
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 18,
              ),
              HoverBuilder(
                builder: (isHovered) {
                  return Text(
                    "PROJECTS",
                    style: TextStyle(
                        color: isHovered ? kHoverColor : kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: fontsize),
                  );
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 18,
              ),
              HoverBuilder(
                builder: (isHovered) {
                  return Text(
                    "CONTACTS",
                    style: TextStyle(
                        color: isHovered ? kHoverColor : kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: fontsize),
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
        child: Column(
          children: [
            Container(
              color: const Color.fromRGBO(244, 244, 244, 1),
              height: 600,
              child: Row(children: [
                Card(
                  color: Colors.white,
                  child: SizedBox(
                    height: 200,
                    width: 40,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.home_filled),
                          Icon(Icons.contacts),
                          Icon(Icons.person),
                          Icon(Icons.settings),
                          Icon(Icons.help),
                        ]),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "I'M AYUSH KUMAR SINGH",
                          style: TextStyle(
                              color: kBlacColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
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
                                minimumSize: Size(250, 60)),
                            onPressed: () {},
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
            SizedBox(
              height: 1100,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "ABOUT ME",
                    style: TextStyle(
                        color: kBlacColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
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
                                      // letterSpacing: 2,

                                      wordSpacing: 2,
                                      // fontWeight: FontWeight.bold
                                    ),
                                    // textAlign: TextAlign.justify,
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
          ],
        ),
      ),
    );
  }
}
