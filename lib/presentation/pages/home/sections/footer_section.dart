import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume_master5/presentation/layout/adaptive.dart';
import 'package:resume_master5/presentation/widgets/buttons/nimbus_button.dart';
import 'package:resume_master5/presentation/widgets/buttons/nimbus_button_link.dart';
import 'package:resume_master5/presentation/widgets/content_area.dart';
import 'package:resume_master5/presentation/widgets/spaces.dart';
import 'package:resume_master5/utils/functions.dart';
import 'package:resume_master5/values/colors.dart';
import 'package:resume_master5/values/images.dart';
import 'package:resume_master5/values/sizes.dart';
import 'package:resume_master5/values/strings.dart';
import 'package:url_launcher/link.dart';

List<FooterItem> footerItems = [
  const FooterItem(
    title: "${StringConst.PHONE_ME}:",
    subtitle: StringConst.PHONE_NUMBER,
    iconData: Icons.phone,
  ),
  const FooterItem(
    title: "${StringConst.MAIL_ME}:",
    subtitle: StringConst.DEV_EMAIL_2,
    iconData: FontAwesomeIcons.paperPlane,
  ),
  const FooterItem(
    title: "${StringConst.FOLLOW_ME_2}:",
    subtitle: StringConst.LINKEDIN_ID,
    iconData: FontAwesomeIcons.linkedin,
  ),
];

class FooterSection extends StatefulWidget {
  const FooterSection({
    super.key,
  });
  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? footerTextStyle = textTheme.bodySmall?.copyWith(
      color: AppColors.primaryText2,
      fontWeight: FontWeight.bold,
    );
    double screenWidth = widthOfScreen(context) - (getSidePadding(context) * 2);
    double screenHeight = heightOfScreen(context);
    double contentAreaWidth = screenWidth;
    double contentAreaHeight = responsiveSize(
      context,
      screenHeight,
      screenHeight * 0.7,
      md: screenHeight * 0.85,
      sm: screenHeight * 0.85,
    );

    return ContentArea(
      padding: EdgeInsets.symmetric(horizontal: getSidePadding(context)),
      child: Column(
        children: [
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              double screenWidth = sizingInformation.screenSize.width;

              if (screenWidth <= (const RefinedBreakpoints().tabletNormal)) {
                return _buildFooterSectionSm(
                  width: contentAreaWidth,
                  height: contentAreaHeight,
                );
              } else {
                return _buildFooterSectionLg(
                  width: contentAreaWidth,
                  height: contentAreaHeight,
                );
              }
            },
          ),
          SpaceH20(),
          InkWell(
            onTap: () => openUrlLink(StringConst.WEB_GENIUS_LAB_URL),
            child: RichText(
              text: TextSpan(
                text: "${StringConst.RIGHTS_RESERVED} ",
                style: footerTextStyle,
                children: [
                  const TextSpan(text: "${StringConst.DESIGNED_BY} "),
                  TextSpan(
                    text: StringConst.WEB_GENIUS_LAB,
                    style: footerTextStyle?.copyWith(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w900,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // NimBusLink(
          //   url: StringConst.WEB_GENIUS_LAB_URL,
          //   child: RichText(
          //     text: TextSpan(
          //       text: StringConst.RIGHTS_RESERVED + " ",
          //       style: footerTextStyle,
          //       children: [
          //         TextSpan(text: StringConst.DESIGNED_BY + " "),
          //         TextSpan(
          //           text: StringConst.WEB_GENIUS_LAB,
          //           style: footerTextStyle?.copyWith(
          //             decoration: TextDecoration.underline,
          //             fontWeight: FontWeight.w900,
          //             color: AppColors.black,
          //           ),
          //         ),
          //       ],
          //     ),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          SpaceH4(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: InkWell(
                    onTap: () => openUrlLink(StringConst.DAVID_LEGEND_URL),
                    child: RichText(
                      text: TextSpan(
                        text: "${StringConst.BUILT_BY} ",
                        style: footerTextStyle,
                        children: [
                          TextSpan(
                            text: "${StringConst.MEEMANSHOO}. ",
                            style: footerTextStyle?.copyWith(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w900,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //  NimBusLink(
                  //   url: StringConst.DAVID_LEGEND_URL,
                  //   child: RichText(
                  //     text: TextSpan(
                  //       text: StringConst.BUILT_BY + " ",
                  //       style: footerTextStyle,
                  //       children: [
                  //         TextSpan(
                  //           text: StringConst.DAVID_COBBINA + ". ",
                  //           style: footerTextStyle?.copyWith(
                  //             decoration: TextDecoration.underline,
                  //             fontWeight: FontWeight.w900,
                  //             color: AppColors.black,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
          SpaceH4(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringConst.MADE_IN_GHANA, style: footerTextStyle),
              SpaceW4(),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  ImagePath.GHANA_FLAG,
                  width: Sizes.WIDTH_16,
                  height: Sizes.HEIGHT_16,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceW4(),
              Text(StringConst.WITH_LOVE, style: footerTextStyle),
              SpaceW4(),
              const Icon(
                FontAwesomeIcons.solidHeart,
                color: AppColors.red,
                size: Sizes.ICON_SIZE_12,
              ),
            ],
          ),
          SpaceH20(),
        ],
      ),
    );
  }

  List<Widget> _buildFooterItems(List<FooterItem> data,
      {bool isHorizontal = false}) {
    List<Widget> items = [];

    for (int index = 0; index < data.length; index++) {
      items.add(
        FooterItem(
          title: data[index].title,
          subtitle: data[index].subtitle,
          iconData: data[index].iconData,
        ),
      );
      if (index < data.length - 1) {
        if (isHorizontal) {
          items.add(const Spacer(flex: 2));
        } else {
          items.add(SpaceH40());
        }
      }
    }
    return items;
  }

  Widget _buildFooterSectionSm({
    required double width,
    required double height,
  }) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ContentArea(
      width: width,
      backgroundColor: AppColors.black400,
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.RADIUS_8),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(Sizes.RADIUS_8),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -(height * 0.1),
              left: -(height * 0.15),
              child: Image.asset(
                ImagePath.BOX_COVER_GOLD,
                // width: width * 0.6 ,
                height: height * 0.5,
                // fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: -(height * 0.1),
              right: -(height * 0.1),
              child: Image.asset(
                ImagePath.BOX_COVER_BLACK,
                height: height * 0.6,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                children: [
                  SpaceH80(),
                  Text(
                    StringConst.LETS_TALK,
                    textAlign: TextAlign.center,
                    style: textTheme.headlineMedium
                        ?.copyWith(color: AppColors.white),
                  ),
                  SpaceH60(),
                  ..._buildFooterItems(footerItems),
                  SpaceH60(),
                  NimbusButton(
                url: "https://calendly.com/meemanshoo/portfolio",
                    linkTarget: LinkTarget.blank,

                    buttonTitle: StringConst.HIRE_ME,
                    buttonColor: AppColors.primaryColor,
                    onPressed: () {
                      // openUrlLink("https://calendly.com/meemanshoo/portfolio");
                    },
                  ),
                  SpaceH80(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterSectionLg({
    required double width,
    required double height,
  }) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ContentArea(
      width: width,
      height: height,
      backgroundColor: AppColors.black400,
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.RADIUS_8),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(Sizes.RADIUS_8),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -(height * 0.15),
              left: -(height * 0.15),
              child: Image.asset(
                ImagePath.BOX_COVER_GOLD,
                // width: width ,
                height: height * 0.5,
                // fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: -(height * 0.15),
              right: -(height * 0.1),
              // bottom: -25,
              child: Image.asset(
                ImagePath.BOX_COVER_BLACK,
                height: height * 1.25,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const Spacer(flex: 2),
                Text(
                  StringConst.LETS_TALK,
                  style:
                      textTheme.displaySmall?.copyWith(color: AppColors.white),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 3),
                    ..._buildFooterItems(footerItems, isHorizontal: true),
                    const Spacer(flex: 3),
                  ],
                ),
                const Spacer(),
                const NimBusButtonLink(
                  url: StringConst.CALENDLY_URL,

                  buttonTitle: StringConst.HIRE_ME,
                  buttonColor: AppColors.primaryColor,
                ),
                const Spacer(flex: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  const FooterItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Icon(
          iconData,
          color: AppColors.primaryColor,
          size: Sizes.ICON_SIZE_36,
        ),
        SpaceH8(),
        Text(
          title,
          style: textTheme.titleMedium?.copyWith(
            color: AppColors.white,
          ),
        ),
        SpaceH8(),
        Text(
          subtitle,
          style: textTheme.bodyLarge?.copyWith(
            color: AppColors.grey250,
          ),
        ),
      ],
    );
  }
}
