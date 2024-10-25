import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Pages/ProjectDetailsScreen/ProjectDetailsScreen.dart';
import 'package:my_portfolio_app/Pages/ProjectsScreen/ProjectsScreenVM.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final ProjectsScreenVM _projectsScreenVM = ProjectsScreenVM();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            ResponsiveUI.w(115, context),
            ResponsiveUI.h(60, context),
            ResponsiveUI.w(115, context),
            ResponsiveUI.h(0, context),
          ),
          child: Text(
            "PROJECTS",
            style: TextStyle(
              color: AppColors.appBackgroundBlack,
              fontSize: ResponsiveUI.sp(48, context),
              fontFamily: 'IBMPlexSerifBold',
            ),
          ),
        ),
        SizedBox(
          height: ResponsiveUI.h(30, context),
        ),
        SizedBox(
          height: ResponsiveUI.h(300, context),
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider.builder(
            itemCount: _projectsScreenVM.works.length,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enlargeCenterPage: true,
                viewportFraction: 0.5,
                enlargeFactor: 0.3),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  ResponsiveUI.w(115, context),
                  ResponsiveUI.h(0, context),
                  ResponsiveUI.w(0, context),
                  ResponsiveUI.h(0, context),
                ),
                child: InkWell(
                  onHover: (value) {
                    _projectsScreenVM.setHoverValue(value: value);
                    _projectsScreenVM.setHoverIndexValue(value: index);
                  },
                  onTap: () {},
                  child: Obx(
                    () => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectDetailsScreen(
                              projectBO: _projectsScreenVM.works[index],
                            ),
                          ),
                        );
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        child: Card(
                          elevation: _projectsScreenVM.isHover.value &&
                                  _projectsScreenVM.hoverIndex.value == index
                              ? 40.0
                              : 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              ResponsiveUI.sp(25, context),
                            ),
                          ),
                          color: AppColors.primaryCardColor,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              ResponsiveUI.w(40, context),
                              ResponsiveUI.h(20, context),
                              ResponsiveUI.w(40, context),
                              ResponsiveUI.h(20, context),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      _projectsScreenVM
                                          .works[index].techStackLogo,
                                      width: ResponsiveUI.w(50, context),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUI.w(10, context),
                                    ),
                                    Text(
                                      _projectsScreenVM.works[index].techStack,
                                      style: TextStyle(
                                        color: AppColors.appBackgroundWhite,
                                        fontSize: ResponsiveUI.sp(16, context),
                                        fontFamily: 'IBMPlexSerifBoldItalic',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: ResponsiveUI.h(12, context),
                                ),
                                Text(
                                  _projectsScreenVM.works[index].title,
                                  style: TextStyle(
                                    color: AppColors.appBackgroundWhite,
                                    fontSize: ResponsiveUI.sp(28, context),
                                    fontFamily: 'IBMPlexSerifBold',
                                  ),
                                ),
                                SizedBox(
                                  height: ResponsiveUI.h(12, context),
                                ),
                                Text(
                                  "Technologies used: ${_projectsScreenVM.works[index].technologiesUsed}",
                                  style: TextStyle(
                                    color: AppColors.appBackgroundWhite,
                                    fontSize: ResponsiveUI.sp(18, context),
                                    fontFamily: 'IBMPlexSerifMedium',
                                  ),
                                ),
                                SizedBox(
                                  height: ResponsiveUI.h(12, context),
                                ),
                                Text(
                                  _projectsScreenVM.works[index].aboutProject,
                                  // maxLines: 2,
                                  style: TextStyle(
                                    color: AppColors.appBackgroundWhite
                                        .withOpacity(0.7),
                                    fontSize: ResponsiveUI.sp(18, context),
                                    fontFamily: 'IBMPlexSerifMedium',
                                  ),
                                ),
                                SizedBox(
                                  height: ResponsiveUI.h(12, context),
                                ),
                                Row(
                                  children: [
                                    Visibility(
                                      visible: _projectsScreenVM.works[index]
                                          .playStoreLink.isNotEmpty,
                                      child: GestureDetector(
                                        onTap: () {
                                          Utilities.launchWebUrl(
                                              url: _projectsScreenVM
                                                  .works[index].playStoreLink);
                                        },
                                        child: Image.asset(
                                          "lib/Resources/Images/ProjectImages/PlayStore.png",
                                          width: ResponsiveUI.w(65, context),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUI.w(25, context),
                                    ),
                                    Visibility(
                                      visible: _projectsScreenVM
                                          .works[index].appStoreLink.isNotEmpty,
                                      child: GestureDetector(
                                        onTap: () {
                                          Utilities.launchWebUrl(
                                              url: _projectsScreenVM
                                                  .works[index].appStoreLink);
                                        },
                                        child: Image.asset(
                                          "lib/Resources/Images/ProjectImages/AppStore.png",
                                          width: ResponsiveUI.w(65, context),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUI.w(25, context),
                                    ),
                                    Visibility(
                                      visible: _projectsScreenVM
                                          .works[index].webSiteLink.isNotEmpty,
                                      child: GestureDetector(
                                        onTap: () {
                                          Utilities.launchWebUrl(
                                              url: _projectsScreenVM
                                                  .works[index].webSiteLink);
                                        },
                                        child: Image.asset(
                                          "lib/Resources/Images/ProjectImages/Website.png",
                                          width: ResponsiveUI.w(65, context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
