import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Pages/AboutScreen/AboutScreen.dart';
import 'package:my_portfolio_app/Pages/ContactScreen/ContactScreen.dart';
import 'package:my_portfolio_app/Pages/ExperienceScreen/ExperienceScreen.dart';
import 'package:my_portfolio_app/Pages/HomeScreen/HomeScreen.dart';
import 'package:my_portfolio_app/Pages/ProjectsScreen/ProjectsScreen.dart';
import 'package:my_portfolio_app/Pages/RootScreen/RootScreenVM.dart';
import 'package:my_portfolio_app/Pages/SkillsScreen/SkillsScreen.dart';
import 'package:my_portfolio_app/Pages/WorksScreen/WorksScreen.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  List<String> menuItems = [
    "HOME",
    "ABOUT",
    "EXPERIENCE",
    "PROJECTS",
    "SKILLS",
    "WORKS",
    "CONTACT",
  ];

  final ScrollController _scrollController = ScrollController();

  final RootScreenVM _rootScreenVM = RootScreenVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ResponsiveUI.h(50, context)),
        child: Center(
          child: Obx(
            () => AppBar(
              backgroundColor: AppColors.appBackgroundBlack,
              leading: Padding(
                padding: EdgeInsets.only(
                  left: ResponsiveUI.w(10, context),
                  top: ResponsiveUI.h(8, context),
                ),
                child: Image.asset(
                  'lib/Resources/Images/AppLogo.png',
                  height: ResponsiveUI.h(8, context),
                  width: ResponsiveUI.w(8, context),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        0.0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: true);
                      _rootScreenVM.setAboutValue(value: false);
                      _rootScreenVM.setExperienceValue(value: false);
                      _rootScreenVM.setProjectsValue(value: false);
                      _rootScreenVM.setSkillsValue(value: false);
                      _rootScreenVM.setWorksValue(value: false);
                      _rootScreenVM.setContactValue(value: false);
                    },
                    child: Text(
                      "HOME",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isHomeSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isHomeSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isHomeSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 1 - 100,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: false);
                      _rootScreenVM.setAboutValue(value: true);
                      _rootScreenVM.setExperienceValue(value: false);
                      _rootScreenVM.setProjectsValue(value: false);
                      _rootScreenVM.setSkillsValue(value: false);
                      _rootScreenVM.setWorksValue(value: false);
                      _rootScreenVM.setContactValue(value: false);
                    },
                    child: Text(
                      "ABOUT",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isAboutSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isAboutSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isAboutSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 2 - 150,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: false);
                      _rootScreenVM.setAboutValue(value: false);
                      _rootScreenVM.setExperienceValue(value: true);
                      _rootScreenVM.setProjectsValue(value: false);
                      _rootScreenVM.setSkillsValue(value: false);
                      _rootScreenVM.setWorksValue(value: false);
                      _rootScreenVM.setContactValue(value: false);
                    },
                    child: Text(
                      "EXPERIENCE",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isExperienceSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isExperienceSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isExperienceSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 3 - 100,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: false);
                      _rootScreenVM.setAboutValue(value: false);
                      _rootScreenVM.setExperienceValue(value: false);
                      _rootScreenVM.setProjectsValue(value: true);
                      _rootScreenVM.setSkillsValue(value: false);
                      _rootScreenVM.setWorksValue(value: false);
                      _rootScreenVM.setContactValue(value: false);
                    },
                    child: Text(
                      "PROJECTS",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isProjectsSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isProjectsSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isProjectsSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 4 - 300,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: false);
                      _rootScreenVM.setAboutValue(value: false);
                      _rootScreenVM.setExperienceValue(value: false);
                      _rootScreenVM.setProjectsValue(value: false);
                      _rootScreenVM.setSkillsValue(value: true);
                      _rootScreenVM.setWorksValue(value: false);
                      _rootScreenVM.setContactValue(value: false);
                    },
                    child: Text(
                      "SKILLS",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isSkillsSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isSkillsSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isSkillsSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 5 - 120,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: false);
                      _rootScreenVM.setAboutValue(value: false);
                      _rootScreenVM.setExperienceValue(value: false);
                      _rootScreenVM.setProjectsValue(value: false);
                      _rootScreenVM.setSkillsValue(value: false);
                      _rootScreenVM.setWorksValue(value: true);
                      _rootScreenVM.setContactValue(value: false);
                    },
                    child: Text(
                      "WORKS",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isWorksSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isWorksSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isWorksSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ResponsiveUI.w(50, context)),
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        MediaQuery.of(context).size.height * 7 - 100,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                      _rootScreenVM.setHomeValue(value: false);
                      _rootScreenVM.setAboutValue(value: false);
                      _rootScreenVM.setExperienceValue(value: false);
                      _rootScreenVM.setProjectsValue(value: false);
                      _rootScreenVM.setSkillsValue(value: false);
                      _rootScreenVM.setWorksValue(value: false);
                      _rootScreenVM.setContactValue(value: true);
                    },
                    child: Text(
                      "CONTACT",
                      style: TextStyle(
                        fontSize: _rootScreenVM.isContactsSelected.value
                            ? ResponsiveUI.sp(20, context)
                            : ResponsiveUI.sp(18, context),
                        color: _rootScreenVM.isContactsSelected.value
                            ? AppColors.white
                            : AppColors.appBackgroundWhite,
                        fontFamily: _rootScreenVM.isContactsSelected.value
                            ? 'IBMPlexSerifBold'
                            : 'IBMPlexSerifRegular',
                      ),
                    ),
                  ),
                ),
              ],
              // actions: [
              //   Expanded(
              //     child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: menuItems.length,
              //       itemBuilder: (context, index) {
              //         return Padding(
              //           padding: EdgeInsets.only(
              //             right: ResponsiveUI.w(50, context),
              //           ),
              //           child: Text(
              //             menuItems[index],
              //             style: TextStyle(
              //               fontSize: ResponsiveUI.sp(18, context),
              //               color: AppColors.appBackgroundWhite,
              //               fontFamily: 'IBMPlexSerifRegular',
              //             ),
              //           ),
              //         );
              //       },
              //     ),
              //   ),
              // ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: const Column(
          children: [
            HomeScreen(),
            AboutScreen(),
            ExperienceScreen(),
            ProjectsScreen(),
            SkillsScreen(),
            WorksScreen(),
            ContactScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        },
        backgroundColor: AppColors.appBackgroundBlack,
        shape: const CircleBorder(),
        child: Icon(
          Icons.keyboard_arrow_up,
          color: AppColors.white,
          size: ResponsiveUI.sp(24, context),
        ),
      ),
    );
  }
}
