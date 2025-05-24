import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_master5/presentation/layout/adaptive.dart';
import 'package:resume_master5/presentation/pages/home/sections/about_me_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/awards_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/blog_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/footer_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/header_section/header_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/nav_section/nav_section_mobile.dart';
import 'package:resume_master5/presentation/pages/home/sections/projects_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/skills_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/statistics_section.dart';
import 'package:resume_master5/presentation/widgets/app_drawer.dart';
import 'package:resume_master5/presentation/widgets/nav_item.dart';
import 'package:resume_master5/presentation/widgets/spaces.dart';
import 'package:resume_master5/utils/functions.dart';
import 'package:resume_master5/values/colors.dart';
import 'package:resume_master5/values/images.dart';
import 'package:resume_master5/values/sizes.dart';
import 'package:resume_master5/values/strings.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'sections/nav_section/nav_section_web.dart';


import 'dart:ui' as ui;
import 'dart:html';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );


  final ScrollController _scrollController = ScrollController();

  final List<NavItemData> navItems = [
    NavItemData(name: StringConst.HOME, key: GlobalKey(), isSelected: true),
    NavItemData(name: StringConst.ABOUT, key: GlobalKey()),
    NavItemData(name: StringConst.SKILLS, key: GlobalKey()),
    NavItemData(name: StringConst.PROJECTS, key: GlobalKey()),
    // NavItemData(name: StringConst.AWARDS, key: GlobalKey()),
    NavItemData(name: StringConst.BLOG, key: GlobalKey()),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {





    _scrollController.addListener(() {
      if (_scrollController.position.pixels < 100) {
        _controller.reverse();
      }
    });
    super.initState();
  }


  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double screenHeight = heightOfScreen(context);
    double spacerHeight = screenHeight * 0.10;

    return Scaffold(
      key: _scaffoldKey,
      drawer: ResponsiveBuilder(
        refinedBreakpoints: const RefinedBreakpoints(),
        builder: (context, sizingInformation) {
          double screenWidth = sizingInformation.screenSize.width;
          if (screenWidth < const RefinedBreakpoints().desktopSmall) {
            return AppDrawer(
              menuList: navItems,
            );
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: ScaleTransition(
        scale: _animation,
        child: FloatingActionButton(
          onPressed: () {
            // Scroll to header section
            scrollToSection(navItems[0].key.currentContext!);
          },
          child: const Icon(
            FontAwesomeIcons.arrowUp,
            size: Sizes.ICON_SIZE_18,
            color: AppColors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveBuilder(
              refinedBreakpoints: const RefinedBreakpoints(),
              builder: (context, sizingInformation) {
                double screenWidth = sizingInformation.screenSize.width;
                if (screenWidth < const RefinedBreakpoints().desktopSmall) {
                  return NavSectionMobile(scaffoldKey: _scaffoldKey);
                } else {
                  return NavSectionWeb(
                    navItems: navItems,
                  );
                }
              },
            ),

            Expanded(child:
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(ImagePath.BLOB_BEAN_ASH),
                        ),
                      ),
                      Column(
                        children: [
                          HeaderSection(
                            key: navItems[0].key,
                          ),
                          SizedBox(height: spacerHeight),
                          VisibilityDetector(
                            key: const Key("about"),
                            onVisibilityChanged: (visibilityInfo) {
                              double visiblePercentage =
                                  visibilityInfo.visibleFraction * 100;
                              if (visiblePercentage > 10) {
                                _controller.forward();
                              }
                            },
                            child: Container(
                              key: navItems[1].key,
                              child: const AboutMeSection(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: spacerHeight),
                  Stack(
                    children: [
                      Positioned(
                        top: assignWidth(context, 0.1),
                        left: -assignWidth(context, 0.05),
                        child: Image.asset(ImagePath.BLOB_FEMUR_ASH),
                      ),
                      Positioned(
                        right: -assignWidth(context, 0.5),
                        child: Image.asset(ImagePath.BLOB_SMALL_BEAN_ASH),
                      ),
                      Column(
                        children: [
                          Container(
                            key: navItems[2].key,
                            child: const SkillsSection(),
                          ),
                          SizedBox(height: spacerHeight),
                         const StatisticsSection(),
                          SizedBox(height: spacerHeight),
                          Container(
                            key: navItems[3].key,
                            child: const  ProjectsSection(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: spacerHeight),
                  Stack(
                    children: [
                      Positioned(
                        left: -assignWidth(context, 0.6),
                        child: Image.asset(ImagePath.BLOB_ASH),
                      ),
                      Column(
                        children: [
                          // Container(
                          //   key: navItems[4].key,
                          //   child: const AwardsSection(),
                          // ),

                          SpaceH40(),
                          Container(
                            key: navItems[4].key,
                            child: const BlogSection(),
                          ),
                          const FooterSection(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
            ),
          ],
        )
      ),
    );
  }
}
