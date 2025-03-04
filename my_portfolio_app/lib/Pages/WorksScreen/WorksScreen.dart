import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Pages/AllWorksScreen/AllWorksScreen.dart';
import 'package:my_portfolio_app/Pages/WorksScreen/WorksScreenVM.dart';
import 'package:my_portfolio_app/Resources/AppColors/AppColors.dart';

class WorksScreen extends StatefulWidget {
  const WorksScreen({super.key});

  @override
  State<WorksScreen> createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  final WorksScreenVM _worksScreenVM = WorksScreenVM();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          ResponsiveUI.w(115, context),
          ResponsiveUI.h(60, context),
          ResponsiveUI.w(115, context),
          ResponsiveUI.h(0, context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Works",
              style: TextStyle(
                color: AppColors.textColorWhite,
                fontSize: ResponsiveUI.sp(18, context),
                fontFamily: 'PoppinsSemiBoldItalic',
              ),
            ),
            SizedBox(
              height: ResponsiveUI.h(16, context),
            ),
            Text(
              "RECENT PROJECTS",
              style: TextStyle(
                color: AppColors.textColorWhite,
                fontSize: ResponsiveUI.sp(48, context),
                fontFamily: 'PoppinsBold',
              ),
            ),
            SizedBox(
              height: ResponsiveUI.h(30, context),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 40,
                childAspectRatio: 2,
              ),
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onHover: (value) {
                    _worksScreenVM.setHoverValue(value: value);
                    _worksScreenVM.setHoverIndexValue(value: index);
                  },
                  onTap: () {
                    Utilities.launchWebUrl(
                        url: _worksScreenVM.works[index].gitHubLink);
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      // height: ResponsiveUI.h(100, context),
                      child: Card(
                        color: AppColors.black,
                        elevation: _worksScreenVM.isHover.value &&
                                _worksScreenVM.hoverIndex.value == index
                            ? 50.0
                            : 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            ResponsiveUI.sp(25, context),
                          ),
                          side: BorderSide(
                            width: 2,
                            color: AppColors.white,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            ResponsiveUI.w(40, context),
                            ResponsiveUI.h(20, context),
                            ResponsiveUI.w(40, context),
                            ResponsiveUI.h(0, context),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        _worksScreenVM
                                            .works[index].techStackLogo,
                                        width: ResponsiveUI.w(34, context),
                                      ),
                                      SizedBox(
                                        width: ResponsiveUI.w(10, context),
                                      ),
                                      Text(
                                        _worksScreenVM.works[index].techStack,
                                        style: TextStyle(
                                          color: AppColors.textColorWhite,
                                          fontSize:
                                              ResponsiveUI.sp(18, context),
                                          fontFamily: 'PoppinsSemiBoldItalic',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ResponsiveUI.h(10, context),
                                  ),
                                  SizedBox(
                                    width: (MediaQuery.of(context).size.width -
                                            270) /
                                        3,
                                    child: Tooltip(
                                      message:
                                          _worksScreenVM.works[index].title,
                                      child: Text(
                                        _worksScreenVM.works[index].title,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textColorWhite,
                                          fontSize:
                                              ResponsiveUI.sp(40, context),
                                          fontFamily: 'PoppinsBold',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ResponsiveUI.h(10, context),
                                  ),
                                  SizedBox(
                                    width: (MediaQuery.of(context).size.width -
                                            270) /
                                        2.1,
                                    child: Text(
                                      _worksScreenVM.works[index].description,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: AppColors.textColorWhite,
                                        fontSize: ResponsiveUI.sp(16, context),
                                        fontFamily: 'PoppinsRegular',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ResponsiveUI.h(15, context),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: AppColors.black,
                                      ),
                                    ),
                                    padding: EdgeInsets.fromLTRB(
                                      ResponsiveUI.w(35, context),
                                      ResponsiveUI.h(0, context),
                                      ResponsiveUI.w(35, context),
                                      ResponsiveUI.h(0, context),
                                    ),
                                    child: Row(
                                      children: [
                                        // SvgPicture.asset(
                                        //   'lib/Resources/Images/OpenSiteArrow.svg',
                                        //   color: AppColors.appBackgroundBlack,
                                        //   height: ResponsiveUI.h(10, context),
                                        //   width: ResponsiveUI.w(10, context),
                                        // ),
                                        Image.asset(
                                          'lib/Resources/Images/SkillsImages/GitHub.png',
                                          height: ResponsiveUI.h(35, context),
                                          width: ResponsiveUI.w(35, context),
                                        ),
                                        SizedBox(
                                          width: ResponsiveUI.w(10, context),
                                        ),
                                        Text(
                                          "GitHub",
                                          style: TextStyle(
                                            color: AppColors.textColorBlack,
                                            fontSize:
                                                ResponsiveUI.sp(16, context),
                                            fontFamily: 'PoppinsMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   child: Image.asset(
                              //     _worksScreenVM.works[index].logo,
                              //     height: ResponsiveUI.h(500, context),
                              //     width: ResponsiveUI.w(500, context),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: ResponsiveUI.h(50, context),
            ),
            Visibility(
              visible: _worksScreenVM.works.length > 4 ? true : false,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AllWorksScreen(works: _worksScreenVM.works)),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "See all my works",
                      style: TextStyle(
                        color: AppColors.textColorWhite,
                        fontSize: ResponsiveUI.sp(18, context),
                        fontFamily: 'PoppinsMedium',
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.textColorWhite,
                      ),
                    ),
                    SizedBox(
                      width: ResponsiveUI.w(10, context),
                    ),
                    Image.asset(
                      'lib/Resources/Images/ArrowWhite.png',
                      height: ResponsiveUI.h(12, context),
                      width: ResponsiveUI.h(12, context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
