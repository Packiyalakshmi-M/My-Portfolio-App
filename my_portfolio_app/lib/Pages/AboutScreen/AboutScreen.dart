import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Reusables/GradientText.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        ResponsiveUI.w(100, context),
        ResponsiveUI.h(60, context),
        ResponsiveUI.w(100, context),
        ResponsiveUI.h(60, context),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nice to meet you!",
                  style: TextStyle(
                    color: AppColors.appBackgroundBlack,
                    fontSize: ResponsiveUI.sp(18, context),
                    fontFamily: 'IBMPlexSerifSemiBoldItalic',
                  ),
                ),
                SizedBox(
                  height: ResponsiveUI.h(16, context),
                ),
                // Text(
                //   "ABOUT ME...",
                //   style: TextStyle(
                //     color: AppColors.appBackgroundBlack,
                //     fontSize: ResponsiveUI.sp(48, context),
                //     fontFamily: 'IBMPlexSerifBold',
                //   ),
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: ResponsiveUI.w(800, context),
                      height: ResponsiveUI.h(250, context),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.gradientStartColor,
                            AppColors.gradientMidColor,
                            AppColors.gradientEndColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        shape: BoxShape.circle,
                      ),
                      // child: Image.asset(
                      //   "lib/Resources/Images/Packiyalakshmi.png",
                      //   // width: ResponsiveUI.w(500, context),
                      //   // height: ResponsiveUI.h(250, context),
                      // ),
                    ),
                    SizedBox(
                      height: ResponsiveUI.h(32, context),
                    ),
                    // Text(
                    //   "PACKIYALAKSHMI M",
                    //   style: TextStyle(
                    //     color: AppColors.appBackgroundBlack,
                    //     fontSize: ResponsiveUI.sp(48, context),
                    //     fontFamily: 'IBMPlexSerifBold',
                    //   ),
                    // ),
                    GradientText(
                      text: "PACKIYALAKSHMI M",
                      gradient: LinearGradient(colors: [
                        AppColors.gradientStartColor,
                        AppColors.gradientMidColor,
                        AppColors.gradientEndColor,
                      ]),
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(48, context),
                        fontFamily: 'IBMPlexSerifBold',
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveUI.h(12, context),
                    ),
                    Text(
                      "Mobile app developer",
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(24, context),
                        fontFamily: 'IBMPlexSerifBoldItalic',
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveUI.h(16, context),
                    ),
                    GestureDetector(
                      onTap: () {
                        Utilities.launchWebUrl(url: AppConstants.resumeUrl);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Download resume",
                            style: TextStyle(
                              color: AppColors.appBackgroundBlack,
                              fontSize: ResponsiveUI.sp(18, context),
                              fontFamily: 'IBMPlexSerifMedium',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUI.w(10, context),
                          ),
                          SvgPicture.asset(
                            'lib/Resources/Images/OpensiteArrow.svg',
                            color: AppColors.appBackgroundBlack,
                            height: ResponsiveUI.h(14, context),
                            width: ResponsiveUI.h(14, context),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: ResponsiveUI.w(165, context),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ResponsiveUI.h(24, context),
                  ),
                  Text(
                    "Hello there!",
                    style: TextStyle(
                      color: AppColors.appBackgroundBlack,
                      fontSize: ResponsiveUI.sp(24, context),
                      fontFamily: 'IBMPlexSerifSemiBold',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(10, context),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(1320, context),
                    child: Text(
                      "My name is Packiyalakshmi M. I am a mobile application developer, and I am passionate about delivering high-quality, responsive, and scalable mobile applications that translates business requiremets into practical, user-centric solutions using Flutter. ",
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(18, context),
                        fontFamily: 'IBMPlexSerifMedium',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(20, context),
                  ),
                  SizedBox(
                    // width: ResponsiveUI.w(1320, context),
                    child: Divider(
                      height: ResponsiveUI.h(1, context),
                      color: AppColors.appBackgroundBlack.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(10, context),
                  ),
                  Row(
                    children: [
                      GradientText(
                        text: "3",
                        gradient: LinearGradient(colors: [
                          AppColors.gradientStartColor,
                          AppColors.gradientMidColor,
                          AppColors.gradientEndColor,
                        ]),
                        style: TextStyle(
                          color: AppColors.appBackgroundBlack,
                          fontSize: ResponsiveUI.sp(55, context),
                          fontFamily: 'IBMPlexSerifBold',
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(12, context),
                      ),
                      Text(
                        "Years Experience",
                        style: TextStyle(
                          color: AppColors.appBackgroundBlack,
                          fontSize: ResponsiveUI.sp(18, context),
                          fontFamily: 'IBMPlexSerifBoldItalic',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(10, context),
                  ),
                  SizedBox(
                    // width: ResponsiveUI.w(1320, context),
                    child: Divider(
                      height: ResponsiveUI.h(1, context),
                      color: AppColors.appBackgroundBlack.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(15, context),
                  ),
                  Text(
                    "Education",
                    style: TextStyle(
                      color: AppColors.appBackgroundBlack,
                      fontSize: ResponsiveUI.sp(24, context),
                      fontFamily: 'IBMPlexSerifSemiBold',
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(10, context),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(1320, context),
                    child: Text(
                      "B.E (ECE)",
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'IBMPlexSerifMedium',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(10, context),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(1320, context),
                    child: Text(
                      "Einstein College of Engineering, Tirunelveli.",
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'IBMPlexSerifMedium',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(10, context),
                  ),
                  SizedBox(
                    width: ResponsiveUI.w(1320, context),
                    child: Text(
                      "CGPA: 8.5",
                      style: TextStyle(
                        color: AppColors.appBackgroundBlack,
                        fontSize: ResponsiveUI.sp(16, context),
                        fontFamily: 'IBMPlexSerifMedium',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(20, context),
                  ),
                  SizedBox(
                    // width: ResponsiveUI.w(1320, context),
                    child: Divider(
                      height: ResponsiveUI.h(1, context),
                      color: AppColors.appBackgroundBlack.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(25, context),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'lib/Resources/Images/Dialer.svg',
                        height: ResponsiveUI.h(12, context),
                        width: ResponsiveUI.w(12, context),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(15, context),
                      ),
                      GestureDetector(
                        onTap: () {
                          Utilities.launchWebUrl(
                            url: "tel:${AppConstants.phoneNumber}",
                          );
                        },
                        child: Text(
                          "+91 9626508568",
                          style: TextStyle(
                            color: AppColors.appBackgroundBlack,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'IBMPlexSerifBoldItalic',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(48, context),
                      ),
                      SvgPicture.asset(
                        'lib/Resources/Images/Email.svg',
                        height: ResponsiveUI.h(10, context),
                        width: ResponsiveUI.w(10, context),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(15, context),
                      ),
                      GestureDetector(
                        onTap: () {
                          Utilities.launchWebUrl(
                            url: "mailto:${AppConstants.email}",
                          );
                        },
                        child: Text(
                          AppConstants.email,
                          style: TextStyle(
                            color: AppColors.appBackgroundBlack,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'IBMPlexSerifBoldItalic',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(20, context),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'lib/Resources/Images/ProfileIcon.svg',
                        height: ResponsiveUI.h(11, context),
                        width: ResponsiveUI.w(11, context),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(15, context),
                      ),
                      GestureDetector(
                        onTap: () {
                          Utilities.launchWebUrl(
                              url: AppConstants.linkedInProfile);
                        },
                        child: Text(
                          "LinkedIn Profile",
                          style: TextStyle(
                            color: AppColors.appBackgroundBlack,
                            fontSize: ResponsiveUI.sp(16, context),
                            fontFamily: 'IBMPlexSerifBoldItalic',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(48, context),
                      ),
                      SvgPicture.asset(
                        'lib/Resources/Images/LocationIcon.svg',
                        height: ResponsiveUI.h(13, context),
                        width: ResponsiveUI.w(13, context),
                      ),
                      SizedBox(
                        width: ResponsiveUI.w(15, context),
                      ),
                      Text(
                        "Tenkasi, India",
                        style: TextStyle(
                          color: AppColors.appBackgroundBlack,
                          fontSize: ResponsiveUI.sp(16, context),
                          fontFamily: 'IBMPlexSerifBoldItalic',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveUI.h(32, context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
