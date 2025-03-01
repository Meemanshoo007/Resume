import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_master5/presentation/pages/home/sections/projects_section.dart';
import 'package:resume_master5/presentation/pages/home/sections/statistics_section.dart';
import 'package:resume_master5/presentation/widgets/blog_card.dart';
import 'package:resume_master5/presentation/widgets/buttons/social_button.dart';
import 'package:resume_master5/presentation/widgets/buttons/social_button_2.dart';
import 'package:resume_master5/presentation/widgets/nimbus_card.dart';
import 'package:resume_master5/presentation/widgets/project_item.dart';
import 'package:resume_master5/presentation/widgets/skill_card.dart';
import 'package:resume_master5/presentation/widgets/skill_level.dart';
import 'package:resume_master5/values/colors.dart';
import 'package:resume_master5/values/images.dart';
import 'package:resume_master5/values/strings.dart';

import '../comps/CompIcons.dart';

class Data {
  static List<SocialButtonData> socialData = [
    SocialButtonData(
      tag: StringConst.TWITTER_URL,
      iconData: FontAwesomeIcons.twitter,
      url: StringConst.TWITTER_URL,
    ),
    SocialButtonData(
      tag: StringConst.FACEBOOK_URL,
      iconData: FontAwesomeIcons.facebook,
      url: StringConst.FACEBOOK_URL,
    ),
    SocialButtonData(
      tag: StringConst.LINKED_IN_URL,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialButtonData(
      tag: StringConst.INSTAGRAM_URL,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
  ];
  static List<SocialButton2Data> socialData2 = [
    SocialButton2Data(
      title: StringConst.LINKEDIN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.BEHANCE_URL,
      titleColor: AppColors.blue300,
      buttonColor: AppColors.blue300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: StringConst.DRIBBLE,
      iconData: FontAwesomeIcons.dribbble,
      url: StringConst.DRIBBLE_URL,
      titleColor: AppColors.pink300,
      buttonColor: AppColors.pink300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: StringConst.INSTA,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
      titleColor: AppColors.yellow300,
      buttonColor: AppColors.yellow300,
      iconColor: AppColors.white,
    ),
  ];

  static List<SkillLevelData> skillLevelData = [
    SkillLevelData(
      skill: StringConst.SKILLS_1,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_2,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_3,
      level: 50,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_4,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_5,
      level: 50,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_6,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_7,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_8,
      level: 80,
    ),
  ];

  static List<SkillCardData> skillCardData = [
    SkillCardData(
      title: StringConst.SKILLS_1,
      description: StringConst.SKILLS_1_DESC,
      iconData: CompIcons.firebase,
    ),
    SkillCardData(
        title: "",
        description: "",
        iconData: Icons.pages_outlined), //not being used
    SkillCardData(
      title: StringConst.SKILLS_5,
      description: StringConst.SKILLS_2_DESC,
      iconData: CompIcons.mongodb,
    ),
    SkillCardData(
      title: StringConst.SKILLS_2,
      description: StringConst.SKILLS_3_DESC,
      iconData: CompIcons.dart,
    ),
    SkillCardData(
      title: StringConst.SKILLS_4,
      description: StringConst.SKILLS_4_DESC,
      iconData: CompIcons.firebase,
    ),
    SkillCardData(
        title: "",
        description: "",
        iconData: Icons.pages_outlined), //not being used
  ];
  static List<StatItemData> statItemsData = [
    StatItemData(value: 120, subtitle: StringConst.HAPPY_CLIENTS),
    StatItemData(value: 2, subtitle: StringConst.YEARS_OF_EXPERIENCE),
    StatItemData(value: 18, subtitle: StringConst.INCREDIBLE_PROJECTS),
    StatItemData(value: 18, subtitle: StringConst.LIVE_PROJECTS),
  ];

  static List<ProjectCategoryData> projectCategories = [
    ProjectCategoryData(title: StringConst.ALL, number: 2, isSelected: true),
    ProjectCategoryData(title: StringConst.BRANDING, number: 1),
    ProjectCategoryData(title: StringConst.HEALTHEEK_DOC, number: 6),
    ProjectCategoryData(title: StringConst.NTIKPAY, number: 2),
    ProjectCategoryData(title: StringConst.EVENTBOOKING, number: 6),
  ];

  static List<String> awards1 = [
    StringConst.AWARDS_1,
    StringConst.AWARDS_2,
    StringConst.AWARDS_3,
    StringConst.AWARDS_4,
    StringConst.AWARDS_5,
  ];

  static List<String> awards2 = [
    StringConst.AWARDS_6,
    StringConst.AWARDS_7,
    StringConst.AWARDS_8,
    StringConst.AWARDS_9,
    StringConst.AWARDS_10,
  ];
  static List<BlogCardData> blogData = [
    BlogCardData(
      category: StringConst.BLOG_CATEGORY_1,
      title: StringConst.BLOG_TITLE_1,
      date: StringConst.BLOG_DATE,
      buttonText: StringConst.READ_MORE,
      imageUrl: ImagePath.BLOG_01,
    ),
    BlogCardData(
      category: StringConst.BLOG_CATEGORY_2,
      title: StringConst.BLOG_TITLE_2,
      date: StringConst.BLOG_DATE,
      buttonText: StringConst.READ_MORE,
      imageUrl: ImagePath.BLOG_02,
    ),
    BlogCardData(
      category: StringConst.BLOG_CATEGORY_3,
      title: StringConst.BLOG_TITLE_3,
      date: StringConst.BLOG_DATE,
      buttonText: StringConst.READ_MORE,
      imageUrl: ImagePath.BLOG_03,
    ),
  ];

  static List<NimBusCardData> nimbusCardData = [
    NimBusCardData(
      title: StringConst.UI_UX,
      subtitle: StringConst.UI_UX_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
    ),
    NimBusCardData(
      title: "StringConst.PHOTOGRAPHER",
      subtitle: StringConst.PHOTOGRAPHER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      circleBgColor: AppColors.yellow100,
    ),
    NimBusCardData(
      title: StringConst.FREELANCER,
      subtitle: StringConst.FREELANCER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      leadingIconColor: AppColors.black,
      circleBgColor: AppColors.grey50,
    ),
  ];

  static List<ProjectData> allProjects = [
    ProjectData(
        title: StringConst.HEALTHEEK_DOC_5_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_5,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.DASHBOARD_1_TITLE,
        category: StringConst.NTIKPAY,
        projectCoverUrl: ImagePath.NTIKPAY_1,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.EVENTBOOKING_3_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_3,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
  ];
  static List<ProjectData> branding = [
    ProjectData(
      title: StringConst.PORTFOLIO_3_TITLE,
      category: StringConst.BRANDING,
      projectCoverUrl: ImagePath.PORTFOLIO_3,
      width: 0.225,
    ),
  ];
  static List<ProjectData> healtheekDoc = [
    ProjectData(
        title: StringConst.DASHBOARD_1_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_1,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.HEALTHEEK_DOC_2_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_2,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.HEALTHEEK_DOC_3_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_3,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.HEALTHEEK_DOC_4_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_4,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.HEALTHEEK_DOC_5_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_5,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.DASHBOARD_1_TITLE,
        category: StringConst.HEALTHEEK_DOC,
        projectCoverUrl: ImagePath.HEALTHEEK_DOC_6,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
  ];

  static List<ProjectData> ntikpay = [
    ProjectData(
        title: StringConst.DASHBOARD_1_TITLE,
        category: StringConst.NTIKPAY,
        projectCoverUrl: ImagePath.NTIKPAY_1,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.NTIKPAY_1_TITLE,
        category: StringConst.NTIKPAY,
        projectCoverUrl: ImagePath.NTIKPAY_2,
        width: 0.2375,
        mobileHeight: 1.4,
        height: 1),
  ];

  static List<ProjectData> eventBooking = [
    ProjectData(
        title: StringConst.EVENTBOOKING_1_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_1,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.EVENTBOOKING_2_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_2,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.EVENTBOOKING_3_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_3,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.EVENTBOOKING_4_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_4,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.EVENTBOOKING_5_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_5,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
    ProjectData(
        title: StringConst.DASHBOARD_1_TITLE,
        category: StringConst.EVENTBOOKING,
        projectCoverUrl: ImagePath.EVENTBOOKING_6,
        width: 0.225,
        mobileHeight: 1.4,
        height: 1),
  ];
}

// Projects
//
// Chat
// Ringtone Application
// Mintomart
// Location Traker
// Quiz App
// Rs Homeo
// Python Excahnge -
// Photon Exchange -
// Octal Prism -
// Event Booking --
// Doctor App -
// NtikPay --
// Healtheek --
// Ozone Exchange -
// Truemax coin -
// npl
// meedo
