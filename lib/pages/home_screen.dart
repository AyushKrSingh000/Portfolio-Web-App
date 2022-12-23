import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

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
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
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
            SizedBox(
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
                            "A Frontend focused Web Developer building the Frontend of Websites and Web Applications that leads to the success of the overall product",
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
          ],
        ),
      ),
    );
  }
}
