import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/ui/home/widgets/common/skills_section.dart';

import '../../../../../constants.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/color_utils.dart';

class AboutSection extends ConsumerStatefulWidget {
  const AboutSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutSectionState();
}

class _AboutSectionState extends ConsumerState<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //   right: -10,
        //   top: 120,
        //   child: Container(
        //     decoration: const BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //           blurRadius: 400,
        //           color: Colors.red,
        //           offset: Offset(
        //             150,
        //             0,
        //           ),
        //         ),
        //       ],
        //     ),
        //     height: 300,
        //     width: 300,
        //   ),
        // ),
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "ABOUT ME!",
              style: GoogleFonts.outfit(
                  color: ColorUtils.getColor(
                    context,
                    textFieldTextColor,
                  ),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
                width: 100,
                child: Divider(
                  thickness: 4,
                  color: primaryColor,
                )),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Text(
                "Hi there! I am a second-year student currently pursuing a degree in Computer Science. I am an aspiring app developer with a passion for creating intuitive and user-friendly mobile experiences. In my free time, I love to code and experiment with new technologies.\n \nI am also a proud winner of the Smart India Hackathon , where I had the opportunity to showcase my skills and develop innovative solutions to real-world problems. I am excited to continue learning and growing as a developer, and I am always open to new opportunities and challenges.",
                style: GoogleFonts.outfit(
                  color: ColorUtils.getColor(
                    context,
                    textFieldTextColor,
                  ),
                  fontSize: 18,
                  height: 1.5,
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 60)),
                  onPressed: () {
                    urlLauncher(resumeLink);
                  },
                  child: Text(
                    "VIEW RESUME",
                    style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            const TechStackSection(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ],
    );
    //Project Section
  }
}
