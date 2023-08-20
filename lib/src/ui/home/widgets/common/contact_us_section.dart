import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/color_utils.dart';

class ContactUsSection extends ConsumerStatefulWidget {
  const ContactUsSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ContactUsSectionState();
}

class _ContactUsSectionState extends ConsumerState<ContactUsSection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          "CONTACT",
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
            width: 50,
            child: Divider(
              thickness: 4,
              color: primaryColor,
            )),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: size.width / 1.5,
          child: Text(
            "Feel free to Contact me by submitting the form below and I will get back to you as soon as possible",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              color: ColorUtils.getColor(
                context,
                textFieldTextColor,
              ),
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
            color: ColorUtils.getColor(
              context,
              textFieldBgColor,
            ),
            elevation: 5,
            child: SizedBox(
              width: 800,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: GoogleFonts.outfit(
                            letterSpacing: 1,
                            color: ColorUtils.getColor(
                              context,
                              textFieldBgColor,
                            ),
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
                            fillColor: ColorUtils.getColor(
                              context,
                              textFieldBgColor,
                            ),
                            filled: true,
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Email',
                        style: GoogleFonts.outfit(
                            letterSpacing: 1,
                            color: ColorUtils.getColor(
                              context,
                              textFieldBgColor,
                            ),
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
                            fillColor: ColorUtils.getColor(
                              context,
                              textFieldBgColor,
                            ),
                            filled: true,
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Message',
                        style: GoogleFonts.outfit(
                            letterSpacing: 1,
                            color: ColorUtils.getColor(
                              context,
                              textFieldBgColor,
                            ),
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
                        maxLines: null,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            fillColor: ColorUtils.getColor(
                              context,
                              textFieldBgColor,
                            ),
                            filled: true,
                            hintText: 'Message',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize:
                                  MediaQuery.of(context).size.width < 650
                                      ? const Size(150, 50)
                                      : const Size(200, 60)),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.amber,
                                content: Text(
                                  'Thanks For Contacting. Will will get to you very soon',
                                  style: GoogleFonts.outfit(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )));
                          },
                          child: Text(
                            "SUBMIT",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
