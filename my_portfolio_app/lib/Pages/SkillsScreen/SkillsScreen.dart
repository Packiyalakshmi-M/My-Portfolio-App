import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/BOs/SkillsBO/SkillsBO.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Pages/SkillsScreen/SkillsScreenVM.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  final SkillsScreenVM _skillsScreenVM = SkillsScreenVM();

  // final List<String> technologies = [
  //   "Flutter",
  //   "Firebase",
  //   "MySQL",
  //   "PHP",
  //   "WordPress REST API",
  //   "Node JS",
  //   "C#",
  //   "Xamarin Forms",
  //   "ASP .NET WebAPI",
  //   "Git",
  //   "TFS",
  // ];

  // final List<String> developmentTools = [
  //   "Visual Studio Code",
  //   "Android Studio",
  //   "XCode",
  //   "GitLab",
  //   "Postman"
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        ResponsiveUI.w(115, context),
        ResponsiveUI.h(60, context),
        ResponsiveUI.w(115, context),
        ResponsiveUI.h(0, context),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'SKILLS',
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: ResponsiveUI.sp(48, context),
                  fontFamily: 'PoppinsBold',
                ),
              ),
            ),
            SizedBox(
              height: ResponsiveUI.h(30, context),
            ),
            Text(
              'Technologies I Use',
              style: TextStyle(
                color: AppColors.textColorWhite,
                fontSize: ResponsiveUI.sp(32, context),
                fontFamily: 'PoppinsSemiBold',
              ),
            ),
            SizedBox(
              height: ResponsiveUI.h(30, context),
            ),
            buildToolList(_skillsScreenVM.skills),
            SizedBox(
              height: ResponsiveUI.h(30, context),
            ),
            Text(
              'Development & Productivity Tools I Use',
              style: TextStyle(
                color: AppColors.textColorWhite,
                fontSize: ResponsiveUI.sp(32, context),
                fontFamily: 'PoppinsSemiBold',
              ),
            ),
            SizedBox(
              height: ResponsiveUI.h(30, context),
            ),
            buildToolList(_skillsScreenVM.productivityTools),
            SizedBox(
              height: ResponsiveUI.h(30, context),
            ),
            Center(
              child: Container(
                width: ResponsiveUI.w(470, context),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    ResponsiveUI.w(30, context),
                    ResponsiveUI.h(10, context),
                    ResponsiveUI.w(30, context),
                    ResponsiveUI.h(10, context),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Utilities.launchWebUrl(url: AppConstants.resumeUrl);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Download my resume',
                            style: TextStyle(
                              color: AppColors.textColorBlack,
                              fontSize: ResponsiveUI.sp(16, context),
                              fontFamily: 'PoppinsMedium',
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUI.w(12, context),
                          ),
                          Container(
                            // width: ResponsiveUI.w(24, context),
                            // height: ResponsiveUI.h(24, context),
                            padding: EdgeInsets.only(
                              left: ResponsiveUI.w(10, context),
                              right: ResponsiveUI.w(10, context),
                              top: ResponsiveUI.h(2, context),
                              bottom: ResponsiveUI.h(2, context),
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.black,
                              // gradient: LinearGradient(
                              //   colors: [
                              //     AppColors.gradientStartColor,
                              //     AppColors.gradientMidColor,
                              //     AppColors.gradientEndColor,
                              //   ],
                              //   begin: Alignment.topLeft,
                              //   end: Alignment.bottomRight,
                              // ),
                            ),
                            child: Center(
                              child: Image.asset(
                                'lib/Resources/Images/ArrowWhite.png',
                                width: ResponsiveUI.w(25, context),
                                height: ResponsiveUI.h(14, context),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildToolList(List<SkillsBO> list) {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      alignment: WrapAlignment.center,
      children: list.map((item) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              item.assetPath,
              width: ResponsiveUI.w(200, context),
              height: ResponsiveUI.h(80, context),
            ),
            // SizedBox(
            //   height: ResponsiveUI.h(12, context),
            // ),
            Text(
              item.stack,
              style: TextStyle(
                color: AppColors.textColorWhite,
                fontSize: 16,
                fontFamily: 'PoppinsBoldItalic',
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
