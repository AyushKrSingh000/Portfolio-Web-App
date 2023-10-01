import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import 'package:my_portfolio/src/ui/home/widgets/common/bottom_bar.dart';
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
            child: const Column(
              children: [
                SizedBox(height: 80),
                HomeSection(),
                AboutSection(),
                ProjectSection(),
                SizedBox(height: 60),
                ContactUsSection(),
                WebsiteFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
